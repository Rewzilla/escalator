
# escalator

A bash one-liner for stealing Linux passwords by overriding the "sudo" command

# Features

* Silently overrides sudo
* Allows sudo to complete seamlessly
* Removes itself completely upon successful sudo
* Stores stolen credentials in /tmp/.log
* Sends stolen credentials to a C-2 server with wget

# Usage

There are two files in this repo:
* escalator.sh: A clean, readable version for reading and understanding
* oneliner.sh: The same script, condensed to a single line, to be used

To use escalator:
1. Add the contents of oneliner.sh to the end of a user's ~/.bashrc
2. Change the log-file and C-2 as needed
3. Wait for creds :)

# Demo

[![asciicast](https://asciinema.org/a/ZROs0ULUBD0I0z2vVfcvpEZtf.png)](https://asciinema.org/a/ZROs0ULUBD0I0z2vVfcvpEZtf)
