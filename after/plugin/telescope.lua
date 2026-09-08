local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

require('telescope').setup({
  defaults = {
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        width = 0.99,
        preview_width = 0.5,
      },
    },
    mappings = {
      i = {
        ["<C-c>"] = false,
      },
      n = {
        ["<C-c>"] = actions.close,
      },
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  },
})

require('telescope').load_extension('frecency')
require('telescope').load_extension('fzf')

vim.keymap.set('n', '<leader>pf', function()
  require('telescope').extensions.frecency.frecency({
    workspace = 'CWD',
    hidden = true,
  })
end, {})

vim.keymap.set('n', '<C-p>', builtin.git_files, {})

vim.keymap.set('n', '<leader>ps', function()
  local ok, search = pcall(vim.fn.input, "Grep > ")
  if not ok or search == "" then
    return
  end
  builtin.grep_string({
    search = search,
    additional_args = { "--hidden" },
    initial_mode = "normal",
  })
end)
