# BASHful Suite by [kyle-west](https://github.com/kyle-west)

`BASHful` is a set of tools I regularly use in my personal development workflow.
This package allows me to share my tools with others. I am always up for ideas 
on how to improve my toolset, so feel free to pitch ideas or enhancements on the 
[Issue Page](https://github.com/kyle-west/bashful/issues). 

# Tools in the Suite and their Documentation

A list of available tools and their usages can be found on the [Documentation Page](https://kyle-west.github.io/bashful/).

# Installing 

Though most of the code is not written in JavaScript, I use the Node Package 
Manager to handle installing and script running, since it is familiar to many.
To install the toolset suite run:

```sh
# clone the suite installation package:
git clone https://github.com/kyle-west/bashful.git
cd bashful/

# run the installation
npm install
```

When this script completes, **you will be prompted to restart your terminal**. This 
is because the installation edits your `$path` environment variable to make the 
tools accessible in all contexts. 

### Uninstalling 

The uninstall is easy, and, like the install, requires a restart afterwards.

```sh
npm run uninstall
```

### Updating 

Unlike the install / uninstall, this will not require a restart after updating

```sh
npm run update
```
