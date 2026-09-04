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

vim.opt.ignorecase = true
vim.opt.smartcase = true

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

vim.g.lazygit_floating_window_winblend = 0
vim.g.lazygit_floating_window_scaling_factor = 0.9
vim.g.lazygit_floating_window_border_chars = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }
vim.g.lazygit_floating_window_use_plenary = 1

vim.g.lazygit_use_neovim_remote = 1

vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { silent = true, desc = "LazyGit" })
vim.keymap.set("n", "<leader>gf", "<cmd>LazyGitCurrentFile<CR>", { silent = true, desc = "LazyGit current file" })
vim.keymap.set("n", "<leader>gl", "<cmd>LazyGitFilter<CR>", { silent = true, desc = "LazyGit log (project)" })
vim.keymap.set("n", "<leader>gL", "<cmd>LazyGitFilterCurrentFile<CR>", { silent = true, desc = "LazyGit log (file)" })

