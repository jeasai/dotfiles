local actions = require("diffview.actions")

local config = {
  keymaps = {
    disable_defaults = false, -- Disable the default keymaps
    view = {
      -- The `view` bindings are active in the diff buffers, only when the current
      -- tabpage is a Diffview.
      { "n", "<tab>",   actions.toggle_files,                  { desc = "Toggle the file panel" } },
      { "n", "<s-tab>", actions.select_next_entry,             { desc = "Open the diff for the next file" } },
      { "n", "P",       actions.prev_conflict,                 { desc = "In the merge-tool: jump to the previous conflict" } },
      { "n", "N",       actions.next_conflict,                 { desc = "In the merge-tool: jump to the next conflict" } },
      { "n", "R",       actions.refresh_files,                 { desc = "Update stats and entries in the file list" } },
      { "n", "<space>o",  actions.conflict_choose("ours"),       { desc = "Choose the OURS version of a conflict" } },
      { "n", "<space>t",  actions.conflict_choose("theirs"),     { desc = "Choose the THEIRS version of a conflict" } },
      { "n", "<space>b",  actions.conflict_choose("base"),       { desc = "Choose the BASE version of a conflict" } },
      { "n", "<space>a",  actions.conflict_choose("all"),        { desc = "Choose all the versions of a conflict" } },
      { "n", "<space>n",  actions.conflict_choose("none"),       { desc = "Delete the conflict region" } },
      { "n", "<space>of", actions.conflict_choose_all("ours"),   { desc = "Choose the OURS version of a conflict for the whole file" } },
      { "n", "<space>tf", actions.conflict_choose_all("theirs"), { desc = "Choose the THEIRS version of a conflict for the whole file" } },
      { "n", "<space>bf", actions.conflict_choose_all("base"),   { desc = "Choose the BASE version of a conflict for the whole file" } },
      { "n", "<space>af", actions.conflict_choose_all("all"),    { desc = "Choose all the versions of a conflict for the whole file" } },
      { "n", "<space>nf", actions.conflict_choose_all("none"),   { desc = "Delete the conflict region for the whole file" } },
    },
    file_panel = {
      { "n", "<tab>",   actions.toggle_files,                  { desc = "Toggle the file panel" } },
      { "n", "L",       false,                                 { desc = "Open the commit log panel" } },
      { "n", "<s-tab>", actions.select_next_entry,             { desc = "Open the diff for the next file" } },
      { "n", "P",       actions.prev_conflict,                 { desc = "In the merge-tool: jump to the previous conflict" } },
      { "n", "N",       actions.next_conflict,                 { desc = "In the merge-tool: jump to the next conflict" } },
      { "n", "R",       actions.refresh_files,                 { desc = "Update stats and entries in the file list" } },
      { "n", "s",       actions.toggle_stage_entry,            { desc = "Stage / unstage the selected entry" } },
      { "n", "S",       actions.stage_all,                     { desc = "Stage all entries" } },
      { "n", "U",       actions.unstage_all,                   { desc = "Unstage all entries" } },
      { "n", "g?",      actions.help("file_panel"),            { desc = "Open the help panel" } },
      { "n", "<space>o",  actions.conflict_choose_all("ours"),   { desc = "Choose the OURS version of a conflict for the whole file" } },
      { "n", "<space>t",  actions.conflict_choose_all("theirs"), { desc = "Choose the THEIRS version of a conflict for the whole file" } },
      { "n", "<space>b",  actions.conflict_choose_all("base"),   { desc = "Choose the BASE version of a conflict for the whole file" } },
      { "n", "<space>a",  actions.conflict_choose_all("all"),    { desc = "Choose all the versions of a conflict for the whole file" } },
      { "n", "<space>n",  actions.conflict_choose_all("none"),   { desc = "Delete the conflict region for the whole file" } },
    },
    file_history_panel = {
      { "n", "<s-tab>", actions.select_next_entry,          { desc = "Open the diff for the next file" } },
      { "n", "<tab>",   actions.toggle_files,               { desc = "Toggle the file panel" } },
      { "n", "g?",      actions.help("file_history_panel"), { desc = "Open the help panel" } },
    },
    option_panel = {
      { "n", "<tab>", actions.toggle_files,          { desc = "Toggle the file panel" } },
      { "n", "q",     actions.close,                 { desc = "Close the panel" } },
      { "n", "g?",    actions.help("option_panel"),  { desc = "Open the help panel" } },
    },
  },
}

return config
