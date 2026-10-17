# AGENTS.md

Exercise specs for `part_i`. Each `task_<N>_<name>.txt` file describes one
shell scripting exercise.

## Output file naming

Write the solution for a task to this folder, named after the task file with
`.txt` swapped for `.sh`:

    task_1_hello_arguments.txt  ->  task_1_hello_arguments.sh

This overrides any script name given inside the task text. Use the new name
wherever the task's examples call the script.

- Make the script executable (`chmod +x`) and start it with `#!/bin/bash`.
- Do not edit the task `.txt` files.
- Generated `task_*.sh` files are ignored by git; `make clean` at the repo
  root removes them.
