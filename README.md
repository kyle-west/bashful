![Bashful Suite by kyle-west](./docs/logo.png)

---

![Primary Support for Mac OS X](https://img.shields.io/badge/platform-osx-%23)
[![Install Version](https://img.shields.io/github/v/tag/kyle-west/bashful?label=version)](https://github.com/kyle-west/bashful/releases/latest)
[![Actions Status](https://github.com/kyle-west/bashful/workflows/CI%20Test/badge.svg)](https://github.com/kyle-west/bashful/actions)


`BASHful` is a set of tools I regularly use in my personal development workflow.
This package allows me to share my tools with others. I am always up for ideas 
on how to improve my toolset, so feel free to pitch ideas or enhancements on the 
[Issue Page](https://github.com/kyle-west/bashful/issues). 

# Tools in the Suite and their Documentation

A list of available tools and their usages can be found on the [Documentation Page](https://kyle-west.github.io/bashful/).

# Installing 

Though most of the code is not written in JavaScript, some of the tools in bashful require `node` (version 8 or higher). You must first [install `NodeJS`](https://nodejs.org/en/download/) on your machine.

Then you may run the following command to install bashful:

```sh
npx -q https://github.com/kyle-west/bashful.git
```

When the script completes, **you must restart your terminal**. This 
is because the installation edits your `$path` environment variable to make the 
tools accessible in all contexts. 

### Installing / Uninstalling Tools

`bashful` CLI has it's own installation management of tools, including gists. See the [Docs](https://kyle-west.github.io/bashful/bashful.html) for more info.

### Uninstalling the entire Suite

The uninstall is easy, and, like the install, requires a restart afterwards.

```sh
bashful uninstall --remove-suite
```

If you wish to uninstall a specific tool, see the [Docs](https://kyle-west.github.io/bashful/bashful.html) for more info.

### Updating 

The `bashful` tool has built in support for updating programs (including installed `gists`)

```sh
bashful update [program]
```
