#!/usr/bin/env bash
set -euxo pipefail

# Load the shell dotfiles, and then some:
for file in .{bash_profile,bashrc,bash_prompt,exports,aliases,functions}; do
    ln -s "$(pwd)/$file" ~/"$file"
done;
unset file;
