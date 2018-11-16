# `inc` Usage and options

Increment the version number in both the `bower.json` and `package.json` files.

_Warning: this package assumes that the version is always a valid [SEMVER](https://semver.org/)._

## Usage

Following the rules of [SEMVER](https://semver.org/), increment the 
version of your repo consistently across files without having to do any math yourself!

```sh
inc [major | minor | patch]
```
The following are guidelines to knowing how to change the version:

> - `major` version when you make incompatible API changes,
> - `minor` version when you add functionality in a backwards-compatible manner, and
> - `patch` version when you make backwards-compatible bug fixes.
> 
> [From [semver.org](https://semver.org/#summary)]


## Examples

Say you add a new function that is still backwards compatible with previous 
versions. Just run the following and the tool will update both the bower and 
package files.

```
inc minor

# Outputs:
#    Moving 1.1.8 --> 1.2.0
#    bower.json updated.
#    package.json updated.
```

If you run `inc` with out specifying a type of change, you will get the following
menu:

```
Current Version is 1.1.8, What should I make the the new release to be? (enter option number)
        1 - Major: 2.0.0
        2 - Minor: 1.2.0
        3 - Patch: 1.1.9
```

Enter `2` for a minor change and so on.
