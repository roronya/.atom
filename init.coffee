atom.keymaps.keyBindings = atom.keymaps.keyBindings.filter(
    (binding) ->
        if (binding.keystrokes == 'ctrl-/')
            console.info 'discard keybinding!!', binding
            false
        else
            true
)
