local dracula = require('lualine.themes.dracula')

local bg = '#0B0E0B'
local bg_b = '#52297a'

for _, mode in pairs(dracula) do
  mode.c.bg = bg
  mode.b.bg = bg_b
end

local round_r = vim.fn.nr2char(0xe0b4)
local round_l = vim.fn.nr2char(0xe0b6)

require('lualine').setup {
  options = {
    theme = dracula,
    icons_enabled = true,
    component_separators = '',
    section_separators = { left = '', right = '' },
    globalstatus = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {
      {
        'branch',
        separator = { right = round_r },
      },
      {
        'diff',
        separator = { right = round_r },
      },
    },
    lualine_c = {
      {
        'filename',
        color = { fg = '#50fa7b', gui = 'bold' },
      },
    },
    lualine_x = {},
    lualine_y = {
      { 'progress', separator = { left = round_l } },
    },
    lualine_z = { 'location' },
  },
}
