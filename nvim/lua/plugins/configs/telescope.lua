local actions = require "telescope.actions"

return {
    defaults = {
        mappings = {
            n = {
                ["s"] = actions.select_vertical,
                ["t"] = actions.select_tab
            }
        }
    },
    pickers = {
        find_files = {
            theme = "dropdown",
        }
    },
    extensions = {
    }
}
