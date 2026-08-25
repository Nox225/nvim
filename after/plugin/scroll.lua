-- require("scrollbar.handlers.gitsigns").setup()
-- require("scrollbar").setup({
--     handle = {
--         color = "#444444",
--     },
--     marks = {
--         Cursor = {
--             text = "•",
--             color = "#FF00FF", -- bright color instead of Normal
--             highlight = "Normal", -- can leave this, color takes precedence if set
--         },
--     },
--     handlers = {
--         cursor = true,
--         diagnostic = true,
--         gitsigns = false, -- Requires gitsigns
--         handle = true,
--         search = false, -- Requires hlslens
--         ale = false, -- Requires ALE
--     },
-- })
require("scrollbar.handlers.gitsigns").setup()

require("scrollbar").setup({
    handle = {
        color = "#444444",
    },
    marks = {
        Cursor = {
            text = "•",
            color = "#FF00FF",
            highlight = "Normal",
        },
        GitAdd = {
            text = "▌",       -- match your gitsigns add glyph
            color = "#89b482", -- greenish, tweak to your theme
        },
        GitChange = {
            text = "▌",
            color = "#d8a657", -- yellow/orange
        },
        GitDelete = {
            text = "▁",       -- thin bottom bar reads well at small size
            color = "#ea6962", -- red
        },
        Handle = {
            priority = 5, -- lower than marks
        },
    },
    handlers = {
        cursor = true,
        diagnostic = true,
        gitsigns = true,
        handle = true,
        search = false,
        ale = false,
    },
})
