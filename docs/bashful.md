# `bashful` Usage and options

Manage the BASHful Suite tools.



## Usage

```sh
bashful [install | uninstall | update] <tool 1> <...>
```
You can manage a tool by specifying the modification type and the tool name.
Valid modification types are defined as:
- `install` will add each `tool` from last update into the command line without checking for updates.
- `update` will checking for updates to the suite, including all tools, and reinstall any tools listed in the command.
- `uninstall` will remove each `tool` from the command line. Use `--remove-suite` to uninstall _the entire BASHful Suite_.

```sh
bashful docs [<tool>]
```
Goto the online documentation for a `tool` (if specified). If no tool is listed, 
then this command will take you to the main index page of the BASHful Suite.

Additionally, `bashful list` will display all the installed tools from the suite. 



## Examples

### Example 1: Install `inc` and `cache`

Use the `bashful` CLI to install a tool or set of tools:

```sh
bashful install inc cache
```

Both `inc` and `cache` are now ready to use! I could have also ran `bashful update inc cache` if I wanted to get the latest version from GitHub. 

### Example 2: Uninstall `json`

```sh
bashful uninstall json
```

Now I can check to see that the program has been removed:

```sh
bashful list

# Outputs:
#    The following Programs are installed
#            inc
#            cache
#            bashful
```


