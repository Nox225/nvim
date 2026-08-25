-- vim.opt.guicursor = ""
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20"

vim.opt.mouse=""

vim.opt.nu = true

vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- vim.opt.wrapscan = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
-- vim.opt.incsearch = true

vim.opt.showmode = false

vim.opt.termguicolors = true

vim.opt.scrolloff = 12 
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

local function my_on_attach(bufnr)
    local api = require('nvim-tree.api')
    api.config.mappings.default_on_attach(bufnr)
    vim.keymap.del('n', '<C-e>', { buffer = bufnr })
end

require('nvim-tree').setup({
    on_attach = my_on_attach,
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
    update_focused_file = {
        enable = true,
        update_root = false,
    },
    view = {
        width = 40
    }
})

-- vim.opt.colorcolumn = "80"

vim.opt.cursorline = true

vim.api.nvim_create_autocmd("FocusLost", {
  pattern = "*",
  command = "silent! wa",
  -- command = "wa",
})

