vim.g.mapleader = " "

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pv", ":NvimTreeToggle<CR>")

vim.keymap.set("n", "<leader>packer", vim.cmd.PackerSync)

vim.keymap.set("n", "<leader>t", vim.cmd.tabclose)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("v", "<leader>y", "\"+y")

-- vim.keymap.set("n", "<leader>gl", function()
--   require('gitgraph').draw({}, { all = true, max_count = 5000 })
-- end)
