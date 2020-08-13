# [Dots](../README.md) – Dots

## Files

- **.bin** – Scripts used by other configs (mostly i3). All executables in
  this directory are available on PATH. Scripts in **.bin/extra** are
  gitignored.
- **.themes** – Custom GTK theme(s).
- **.config** – Configuration directories for most things that need to be
  configured.
- **.zshenv** – Entry point for ZSH configuration. The rest of the
  configuration is in **.config/zsh**.

## Zsh

Since my **.zshrc** file was becoming too big to comfortably navigate I split it
into more manageable chunks. Now there is a main file that imports the theme and
aliases.

Aliases are grouped by the programs they alias (with exception of shell and
keyboard). Alias files define most of their aliases through an associative
array, this is partially for readability, but also to make it possible to list
all aliases related to a program when running `aliases <command>`.

**[screengrab](./.bin/screengrab)**

Uses slop to select a region of the screen, an ffmpeg to record it. When
done it will paste the path to the video on the clipboard.

_Example usage:_

```bash
screengrab start
screengrab stop
```