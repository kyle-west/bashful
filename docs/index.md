# BASHful Suite Tools

<link rel="shortcut icon" type="image/png" href="favicon.png"/>

## [`bashful`](./bashful.md)

Manage the BASHful Suite tools.
See the [Docs](./bashful.md) for more details.

```sh
bashful [install | uninstall | update] <tool 1> <...>
bashful docs [<tool>]
bashful gist install <url-to-github-gist>
```

---

## [`cache`](./cache.md)

Temporarily remove a folder (or folders) and restore it when you need it again. 
See the [Docs](./cache.md) for more details.

```sh
cache <folder 1> <...>
cache [--restore | --show | --clear]
```


## [`inc`](./inc.md)

Increment the version number in both the `bower.json` and `package.json` files.
See the [Docs](./inc.md) for more details.

```sh
inc [major | minor | patch]
```


## [`json`](./json.md)

Reads in a JSON file and quickly evaluates it. 
See the [Docs](./json.md) for more details.

```sh
json <filename> <evaluation string>
```