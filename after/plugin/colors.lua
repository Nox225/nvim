-- require('rose-pine').setup({
--     -- disable_background = true,
-- })
--
-- function ColorMyPencils(color) 
-- 	color = color or "rose-pine"
-- 	vim.cmd.colorscheme(color)
--
-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--
-- end
--
-- ColorMyPencils()

vim.o.background = 'dark'

local c = require('vscode.colors').get_colors()
require('vscode').setup({
    disable_nvimtree_bg = true,

    -- Apply theme colors to terminal
    -- terminal_colors = true,

    -- Override colors (see ./lua/vscode/colors.lua)
    color_overrides = {
        vscBack = "#0B0E0B",
        vscLightBlue = '#8FCEF2',  -- variables
        vscLineNumber = '#858585',
        vscOrange = '#C7866E',     -- strings
        vscYellow = '#DCDCAA',     -- functions
    },
--     group_overrides = {
--     -- functions
--     ["@function"] = { fg = "#DCDCAA" },
--     ["@function.call"] = { fg = "#DCDCAA" },
--
--     -- variables / self
--     ["@variable"] = { fg = "#9CDCFE" },
--     ["@variable.member"] = { fg = "#9CDCFE" },
--     ["@lsp.type.selfParameter"] = { fg = "#9CDCFE" },
--
--     -- enums/constants
--     ["@constant"] = { fg = "#4EC9B0" },
--     ["@lsp.type.enumMember"] = { fg = "#4EC9B0" },
--
--     -- imports
--     ["@module"] = { fg = "#6A9955" },
--     ["@lsp.type.namespace"] = { fg = "#6A9955" },
--     ["@lsp.type.module"] = { fg = "#6A9955" },
--     ["@lsp.type.import"] = { fg = "#6A9955" },
-- }
-- ,
    --   color_overrides = {
    -- Syntax
    -- vscGreen = '#6A9955',      -- comments
    -- vscPink = '#C586C0',       -- keywords
    -- vscBlueGreen = '#4EC9B0',  -- constants/enums

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    -- group_overrides = {
    --     -- this supports the same val table as vim.api.nvim_set_hl
    --     -- use colors from this colorscheme by requiring vscode.colors!
    --     Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    -- }
})
-- require('vscode').load()

-- load the theme without affecting devicon colors.
vim.cmd.colorscheme "vscode"

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#111111" })

vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "none" })

vim.api.nvim_set_hl(0, 'GitGraphHash',       { fg = '#06979A' }) -- cyan       (krótki, techniczny)
vim.api.nvim_set_hl(0, 'GitGraphTimestamp',  { fg = '#8888aa' }) -- szary-fiol (mniej ważny)
vim.api.nvim_set_hl(0, 'GitGraphAuthor',     { fg = '#33A1FD' }) -- blue/white (czytelny)
vim.api.nvim_set_hl(0, 'GitGraphBranchName', { fg = '#D4F000' }) -- żółty neon (wyróżniony)
vim.api.nvim_set_hl(0, 'GitGraphBranchTag',  { fg = '#ff00ff' }) -- magenta    (jak cursor — ważne)colo
vim.api.nvim_set_hl(0, 'GitGraphBranchMsg',  { fg = '#F5F5F5' }) -- foreground (najważniejszy tekst)
vim.api.nvim_set_hl(0, 'GitGraphBranch1',    { fg = '#E846BC' }) -- magenta/pink
vim.api.nvim_set_hl(0, 'GitGraphBranch2',    { fg = '#06979A' }) -- cyan
vim.api.nvim_set_hl(0, 'GitGraphBranch3',    { fg = '#AF20F0' }) -- fiolet
vim.api.nvim_set_hl(0, 'GitGraphBranch4',    { fg = '#D4F000' }) -- żółty neon
vim.api.nvim_set_hl(0, 'GitGraphBranch5',    { fg = '#00af00' }) -- zielony

vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#032418' })  -- delikatny fiolet, pasuje do twojego bg
-- #33A1FD
-- -- Search
-- vim.api.nvim_set_hl(0, "Search", { bg = "#00FFFF", fg="#000000" })
-- vim.api.nvim_set_hl(0, "IncSearch", { bg = "#00FFFF", fg="#000000" })
vim.api.nvim_set_hl(0, "CurSearch", { bg = "#39ACFF", fg="#000000" })
-- vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = "#00FFFF" })
-- vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = "#00FFFF" })
-- vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = "#00FFFF" })
-- vim.api.nvim_set_hl(0, "Search", { bg = "#33A1FD", fg = "#ffffff" })
-- vim.api.nvim_set_hl(0, "IncSearch", { bg = "#ff6ac1", fg = "#140a1f" })
-- vim.api.nvim_set_hl(0, "CurSearch", { bg = "#ff6ac1", fg = "#140a1f" })

vim.api.nvim_set_hl(0, "FlashLabel", {
    fg = "#140a1f",   -- ciemny tekst na jaskrawym tle dla kontrastu
    bg = "#ff2fd0",   -- neonowy róż/magenta
    bold = true,
})

-- Match = wszystkie dopasowania przed wpisaniem etykiety
vim.api.nvim_set_hl(0, "FlashMatch", {
    fg = "#00f5ff",   -- neonowy cyan
    bg = "NONE",
    bold = true,
})

-- Current = dopasowanie pod kursorem / aktualnie podświetlone
vim.api.nvim_set_hl(0, "FlashCurrent", {
    fg = "#140a1f",
    bg = "#39ff14",   -- neonowa zieleń
    bold = true,
})

vim.api.nvim_set_hl(0, "FlashBackdrop", {
    fg = "#6c6c85",   -- jaśniejszy fiolet/szary
})

