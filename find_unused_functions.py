import os
import re
from pathlib import Path
from collections import defaultdict

def find_unused_functions(datapack_path):
    """Find all .mcfunction files that aren't called by any function command."""
    
    # Find all .mcfunction files
    all_functions = set()
    function_file_paths = {}
    
    for root, dirs, files in os.walk(datapack_path):
        for file in files:
            if file.endswith('.mcfunction'):
                file_path = os.path.join(root, file)
                # Calculate the function path (e.g., "expansion:path/to/function")
                relative_path = os.path.relpath(file_path, datapack_path)
                
                # Extract namespace and path
                path_parts = relative_path.split(os.sep)
                if path_parts[0] == 'data' and len(path_parts) > 2:
                    namespace = path_parts[1]
                    function_subpath = os.sep.join(path_parts[3:])  # Skip 'data' and namespace, skip 'function'
                    function_name = function_subpath[:-len('.mcfunction')]  # Remove extension
                    function_name = function_name.replace(os.sep, '/')  # Use forward slashes
                    
                    full_function_path = f"{namespace}:{function_name}"
                    all_functions.add(full_function_path)
                    function_file_paths[full_function_path] = file_path
    
    # Find all function calls in all files
    called_functions = set()
    # Pattern for .mcfunction files: "function expansion:path/to/function"
    mcfunction_pattern = re.compile(r'function\s+(\w+:\S+)', re.IGNORECASE)
    # Pattern for advancement JSON files: "function": "expansion:path/to/function"
    json_function_pattern = re.compile(r'"function"\s*:\s*"([^"]+)"')
    
    for root, dirs, files in os.walk(datapack_path):
        for file in files:
            file_path = os.path.join(root, file)
            try:
                with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.read()
                    # Match mcfunction calls
                    matches = mcfunction_pattern.findall(content)
                    called_functions.update(matches)
                    # Match JSON advancement function calls
                    json_matches = json_function_pattern.findall(content)
                    called_functions.update(json_matches)
            except Exception as e:
                print(f"Warning: Could not read {file_path}: {e}")
    
    # Find unused functions
    unused_functions = all_functions - called_functions
    
    # Sort for consistent output
    unused_functions = sorted(unused_functions)
    
    return unused_functions, function_file_paths

def main():
    # Get the datapack path
    datapack_path = os.path.dirname(os.path.abspath(__file__))
    output_file = os.path.join(datapack_path, 'unused_functions.txt')
    
    print(f"Scanning datapack at: {datapack_path}\n")
    
    unused, file_paths = find_unused_functions(datapack_path)
    
    # Write output to file
    with open(output_file, 'w', encoding='utf-8') as f:
        if unused:
            f.write(f"Found {len(unused)} unused function(s):\n\n")
            for func in unused:
                file_path = file_paths[func]
                f.write(f"{func}\n")
                f.write(f"  File: {file_path}\n\n")
        else:
            f.write("No unused functions found!")
    
    print(f"Results written to: {output_file}")
    
    if unused:
        print(f"Found {len(unused)} unused function(s)")
    else:
        print("No unused functions found!")

if __name__ == "__main__":
    main()
