#!/bin/bash
#
# demo.sh - A small script demonstrating core shell scripting concepts:
#   - Variables
#   - Exit codes and tests
#   - if/else
#   - Script arguments
#
# Usage: ./demo.sh <name> [age]

# ---- Script arguments ----
# $1, $2, etc. are positional arguments. $# is the argument count.
name="$1"
age="$2"

# ---- Variables ----
min_age=18
greeting="Hello"

# ---- Exit codes and tests ----
# A missing required argument is an error condition, so we exit early
# with a non-zero exit code (convention: 0 = success, non-zero = failure).
if [ -z "$name" ]; then
    echo "Error: you must provide a name." >&2
    echo "Usage: $0 <name> [age]" >&2
    exit 1
fi

echo "$greeting, $name!"

# ---- if/else ----
# Only check age logic if an age argument was actually given.
if [ -z "$age" ]; then
    echo "No age provided, skipping age check."
elif [ "$age" -lt "$min_age" ] 2>/dev/null; then
    echo "You are under $min_age."
else
    if [ "$age" -ge "$min_age" ] 2>/dev/null; then
        echo "You are $age, which is $min_age or older."
    else
        # Test failed because $age wasn't a number
        echo "Error: age must be a number." >&2
        exit 2
    fi
fi

# ---- Exit codes in practice ----
# Run a command and check its exit code explicitly with $?
grep -q "root" /etc/passwd
status=$?

if [ $status -eq 0 ]; then
    echo "Found 'root' in /etc/passwd (exit code: $status)."
else
    echo "'root' not found in /etc/passwd (exit code: $status)."
fi

# Explicit success exit code at the end of the script
exit 0
