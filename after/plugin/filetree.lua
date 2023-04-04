
-- disable netrw at the very start of your init.lua (strongly advised)

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults


-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
    highlight_git = true
  },
  filters = {
    dotfiles = false,
  },
})


local builtin = require("nvim-tree.api")
vim.keymap.set('n', '<leader>e', function() builtin.tree.toggle({find_file = true})  end, {desc = 'Toggle Tree'})
