#!/usr/bin/env bash
# ^ Note the above "shebang" line. This says "This is an executable shell script"

# If any command fails, exit immediately with that command's exit status
set -eo pipefail

# Run flake8 against all code
flake8 source_code
echo "flake8 passed!"

# Run black against all code
black source_code --check
echo "black passed!"
