local function search_from_under()
    require("telescope.builtin").grep_string({
        search = vim.fn.expand("<cword>"),
        initial_mode = "normal",
    })
end

local function search_from_visual()
    local selection = vim.fn.getregion(vim.fn.getpos("v"), vim.fn.getpos("."))
    require("telescope.builtin").grep_string({
        search = table.concat(selection, "\n"),
    })
end

vim.keymap.set("n", "<leader>ws", search_from_under)
vim.keymap.set("v", "<leader>ws", search_from_visual)
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gb", "<cmd>GitBlameToggle<CR>", { desc = "Toggle git blame" })

local function toggle_git_log()
    local git_log_bufnr = nil
    
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if vim.bo[buf].filetype == 'git' and vim.bo[buf].buftype == 'nofile' then
            git_log_bufnr = buf
            break
        end
    end

    if git_log_bufnr then
        local win_id = vim.fn.bufwinid(git_log_bufnr)
        if win_id ~= -1 then
            vim.api.nvim_win_close(win_id, true)
        end
    else
        vim.cmd('G log --graph --all --pretty=format:"%C(yellow)%h%C(reset) %C(auto)%d %C(blue)%ad %C(yellow)%s %C(white)%an" --date=short')
        vim.defer_fn(function()
            vim.cmd('wincmd H')
            vim.cmd('vertical resize +100')
        end, 1)
    end
end

local function toggle_git_diff()
    local git_log_bufnr = nil
    
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if vim.bo[buf].filetype == 'git' and vim.bo[buf].buftype == 'nofile' then
            git_log_bufnr = buf
            break
        end
    end

    if git_log_bufnr then
        local win_id = vim.fn.bufwinid(git_log_bufnr)
        if win_id ~= -1 then
            vim.api.nvim_win_close(win_id, true)
        end
    else
        vim.cmd('G diff')
        vim.defer_fn(function()
            vim.cmd('wincmd H')
        end, 100)
    end
end

vim.keymap.set('n', '<leader>gg', toggle_git_log, {noremap = true, silent = true})
vim.keymap.set('n', '<leader>gd', toggle_git_diff, {noremap = true, silent = true})
