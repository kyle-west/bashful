# BASHful Suites by [kyle-west](https://github.com/kyle-west)

`BASHful` is a set of tools I regularly use in my personal development workflow.
This package allows me to share my tools with others. I am always up for ideas 
on how to improve my toolset, so feel free to pitch ideas or enhancements on the 
[Issue Page](https://github.com/kyle-west/bashful/issues). 

## Installing 

Though most of the code in not written in JavaScript, I use the Node Package 
Manager to handle installing and script running, since it is familiar to many.
To install the toolset suite run:

```sh
npm install
```

When this script completes, you will be prompted to restart your terminal. This 
is because the installation edits your `$path` environment variable to make the 
tools accessible in all contexts. 

## Uninstalling 

The uninstall is easy, and, like the install, requires a restart afterwards.

```sh
npm run uninstall
```

## Updating 

Unlike the install / uninstall, this will not require a restart after updating

```sh
npm run update
```