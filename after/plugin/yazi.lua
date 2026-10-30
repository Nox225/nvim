require('yazi').setup({
    -- open_for_directories = true,
    open_for_directories = false,
    -- floating_window_scaling_factor = { height= 0.9, width= 1},
    floating_window_scaling_factor = 1,
    -- yazi_floating_window_border = 'rounded',
    yazi_floating_window_border = 'none',
    keymaps = {
      show_help = "<f1>",
    },
})

vim.keymap.set({ "n", "v" }, "<leader>-", "<cmd>Yazi<cr>", { desc = "Open yazi at the current file" })
vim.keymap.set("n", "<leader>cw", "<cmd>Yazi cwd<cr>", { desc = "Open yazi in nvim's working directory" })
vim.keymap.set("n", "<c-up>", "<cmd>Yazi toggle<cr>", { desc = "Resume the last yazi session" })

