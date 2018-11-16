# `cache` Usage and options

Temporarily remove a folder (or folders) and restore it when you need it again.

_Warning: this program is still in beta and subject to change. It's use in scripts is highly unrecommended._

## Usage

```sh
cache <folder 1> <folder 2> <...>
```

`cache` takes any number of arguments. Each argument represents a folder in the 
current directory (**_currently only supporting one level deep namespacing_**). 
These folders will be removed from the current working directory and stored 
elsewhere on the computer until you need them again.

```sh
cache <option>
```

`cache` supports the following options:

- `cache --restore`: Restores _all_ folders currently cached from the current working directory. (support soon coming to be able to restore a specific folder or set of folders by name, but not currently available).
- `cache --show`: Lists the cached folders from the current working directory and the timestamp of last caching.
- `cache --clear`: Permanently deletes all the cached folders from the current working directory. If specified `--clear all` then **_all_** of the cached folders from _every_ workspace will be removed.

## Examples

### Example 1: Temporarily removing the `node_modules` folder

This very task is why this program was written. I have often needed to remove the 
`node_modules` to link repos in an application, and then later need to restore 
them to run tests in that repo. 

To cache the folder run:

```sh
cache node_modules
```

We can now do whatever tasks need to be done without that folder there. When we 
are ready to have the node_modules back in the repo, we can simply invoke:

```sh
cache --restore
```

This is _much_ quicker than running `npm install`, and a lot more efficient on
resources to do so. I have used this program among the most in my toolset for
this very task.


### Example 2: Knowing if the current working directory has any cached folders

I sometimes can't remember when I last cached a folder, or if I have just never
done a `npm install` on that repo yet. The following command helps us decide.

```sh
cache --show
```

This will output something to the following:

```
Files for <project> were cached on Fri Nov 16 07:45:23 MST 2018
node_modules
```
