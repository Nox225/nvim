local dracula = require('lualine.themes.dracula')

-- Change section backgrounds
local bg = '#0B0E0B'

for _, mode in pairs(dracula) do
  mode.c.bg = bg
end

require('lualine').setup {
  options = {
    theme = dracula,
    icons_enabled = true,
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    globalstatus = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff' },
    lualine_c = {
      {
        'filename',
        color = { fg = '#bd93f9', gui = 'bold' },
      },
    },
    lualine_x = {},
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
}
