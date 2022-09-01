import json
import shutil
import os
cwd = os.getcwd()

 
with open('files.json') as json_file:
    entries = json.load(json_file)


for name, path in entries.items():
    if "~" in path:
        path = os.path.expanduser(path)
    shutil.copy2(path, f"{cwd}/{name}")

