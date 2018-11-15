# `json` Usage and options

Reads in a JSON file and quickly evaluates it.


## Usage

```sh
json <filename> <evaluation string>
```

`json` only take two arguments. `<filename>` is the name of the file you wish
to read into the program and interpret. `<evaluation string>` is a string 
containing valid JavaScript that is ran after loading the JSON object into memory. 
Memory is given the token `$` to represent the JSON object and can be used 
literally in the string. 

## Examples

### Example 1: Check the version on a `package.json` file

```sh
json package.json $.version

# Outputs:
#    1.0.2
```


### Example 2: Loop through the keywords of a package and make them uppercase

This is useless in real life, but it gives you the gist of how to use the function.
Note that we use `console.log()` to print out values.

```sh
json package.json '$.keywords.forEach(word => console.log(word.toUpperCase()))'

# Outputs:
#    BASH
#    TERMINAL
#    TOOLS
```

`json` also returns the value of expressions, so we could have done this instead:

```sh
json package.json '$.keywords.map(word => word.toUpperCase())'

# Outputs:
#    [ 'BASH', 'TERMINAL', 'TOOLS' ]
```

---
###### [[back to docs]](./index.md)