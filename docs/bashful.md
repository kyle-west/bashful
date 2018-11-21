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

## Installing GitHub Gists

_Warning: this feature is experimental and subject to possible change_

```sh
bashful gist install <url-to-github-gist>
```

I once wanted to send a coworker a script that ran a useful set of instructions for 
a particular common work task. It ended up being a painful process to have the file
added to `PATH` and setting the permissions so that it could be invoked from the 
command line. So I decided to add a feature to `bashful` to install gists as 
executable files. 



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

### Example 3: Installing a gist from GitHub to the command line

I wrote a test gist to QA this feature of `bashful`. Feel free to install it. 
It's called bacon, and all it does is echo out a congratulations message.

```sh
bashful gist install https://gist.github.com/kyle-west/e3f91dc5817849ca4a316098911b7e7d # <-- link to `bacon` program
```

Now I can run `bacon` from the terminal and see that it worked. (Note that the 
`bashful` will treat this as a normal native program, and you can remove it by 
typing `bashful uninstall bacon`).

