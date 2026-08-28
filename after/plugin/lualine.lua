require('lualine').setup {
  options = {
    theme = 'ayu_dark',
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
        color = { fg = '#e6b450', gui = 'bold' },
      },
    },
    lualine_x = {},
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
}
