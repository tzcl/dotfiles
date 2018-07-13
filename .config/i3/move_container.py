#!/usr/bin/env python

import json, subprocess, sys

workspace = 0
total_workspaces = 9
dir = int(sys.argv[1])

data = json.loads(subprocess.check_output(["i3-msg", "-t", "get_workspaces"]))

for ws in data:
    if ws["focused"]:
        workspace = int(ws["name"])

workspace = workspace + dir
if workspace > 9: workspace = 1
if workspace < 1: workspace = 9
print(workspace)

subprocess.call("i3-msg move container to workspace " + str(workspace) + "; i3-msg workspace " + str(workspace), shell=True)
