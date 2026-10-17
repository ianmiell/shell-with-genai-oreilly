# AGENTS.md

Exercises for the O'Reilly course "Shell Scripting with GenAI".

## Layout

- `intro/` - a demo script showing core shell scripting concepts.
- `part_i/`, `part_ii/`, `part_iii/` - exercise specs, one per file, named
  `task_<N>_<name>.txt`.

Each folder has its own `AGENTS.md` with notes for that folder.

## Output file naming

When you write a solution to a task, save it next to the task file and name
it after the task file, swapping `.txt` for `.sh`:

    part_i/task_1_hello_arguments.txt  ->  part_i/task_1_hello_arguments.sh

This rule overrides any script name given inside the task text (for example
`hello.sh`). When the task text shows example commands such as `./hello.sh Bob`,
run them with the new name instead (`./task_1_hello_arguments.sh Bob`).

- Make the script executable (`chmod +x`).
- Start it with `#!/bin/bash`.
- Do not edit the task `.txt` files.

Generated `task_*.sh` files are ignored by git (see `.gitignore`). Remove them
all with:

    make clean
