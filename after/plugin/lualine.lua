require('lualine').setup {
  options = {
    theme = 'ayu_dark',
    icons_enabled = true, -- zostawiamy True dla plikow, ale usuwamy konkretne komponenty ponizej
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    globalstatus = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff' }, -- usunięte: 'diagnostics'
    lualine_c = { 'filename' },
    lualine_x = { 'filetype' }, -- usunięte: 'encoding', 'fileformat'
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
}
