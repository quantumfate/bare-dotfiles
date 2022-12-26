#!/usr/bin/env python3

import os
import sys

def main():
    # Determine the current clipboard
    if len(sys.argv) > 1:
        # Use the command-line argument as the clipboard
        clipboard = sys.argv[1]
    else:
        # Use the clipboard from Neovim
        clipboard = os.popen("xsel -ob").read()

    # Set the clipboard in Neovim
    os.system(f"xsel -ib <<EOF\n{clipboard}\nEOF")

    # Set the clipboard in VSCode
    os.system(f"echo -n {clipboard} | xsel -i -b")

if __name__ == "__main__":
    main()

