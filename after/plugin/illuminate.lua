require('illuminate').configure({
  delay = 100,
  under_cursor = false,
  filetypes_denylist = { 'NvimTree', 'TelescopePrompt', 'harpoon', },
})

vim.api.nvim_create_autocmd('ColorScheme', {
  pattern = 'vscode',
  callback = function()
    vim.api.nvim_set_hl(0, 'IlluminatedWordText', { bg = '#2a1b3d' })
    vim.api.nvim_set_hl(0, 'IlluminatedWordRead', { bg = '#2a1b3d' })
    vim.api.nvim_set_hl(0, 'IlluminatedWordWrite', { bg = '#2a1b3d' })
  end,
})
