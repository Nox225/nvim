local ensure_installed = {
    "javascript",
    "jsx",
    "typescript",
    "tsx",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "python",
    "scss",
    "css",
    "html",
    "htmldjango"
}

require('nvim-treesitter').install(ensure_installed)

vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function()
    local ok = pcall(vim.treesitter.start)
    if not ok then return end
  end,
})
