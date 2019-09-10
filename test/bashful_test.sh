source test/_tools.sh


# ######################################################
# bashful --version
#   Display currently Bashful Tools version
# ######################################################
xrun bashful --version
xrun bashful -v

# ######################################################
# bashful list
#   Display currently installed Bashful Tools
# ######################################################
run bashful list


# ######################################################
# bashful uninstall <program|gist>
# bashful uninstall --remove-suite
#   Remove a native program or installed gist.
#   Use `--remove-suite` to uninstall all of bashful
# ######################################################
run bashful uninstall inc
bashful list
xrun bashful uninstall --remove-suite


# ######################################################
# bashful install <program>
#   Install a missing native progam. To install gists, see `bashful gist install`  
# bashful update [<program|gist>]
#   Reinstall a progam. `update` supports already installed gists
#   Running `bashful update` will also update `bashful`
# ######################################################
bashful install inc
bashful update



# ######################################################
# bashful gist install <url|program name in registry>
#   Install a gist as an executable
# bashful gist add <new registry url>
#   Add a JSON registry list to bashful's main registry
# bashful gist info [<name or search>]
#   List all gists in bashful's registry that are available to install
# ######################################################
run bashful gist info
div --

run bashful gist install https://gist.github.com/kyle-west/5735c708e395b7c65d439325df88ea32 # killport
run bashful gist install prune
bashful list
div --

run bashful gist install bacon
run bashful gist add https://gist.github.com/kyle-west/f1cdcb80c1666788cd5337f0d66bb058 # BashfulTest.registry.json
bashful gist info
run bashful gist install bacon
div --

bashful list

div --
run bashful gist update-registry BashfulTest
bashful gist info

div --
run bashful update
run bashful update bacon

# ######################################################
# bashful [docs|man] [<progam|gist>]
#   Open the website for an installed program or gist
# ######################################################
xrun bashful docs cache
xrun bashful man inc
xrun bashful docs bacon

# ######################################################
# bashful      (default - should show help menu)
# ######################################################
run bashful
run bashful unknown-command