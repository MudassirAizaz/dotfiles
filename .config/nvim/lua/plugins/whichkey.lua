return {
    "folke/which-key.nvim",
    -- event = "VeryLazy",
    lazy = false,
    opts = {
        layout = {
            -- width = { min = 20,}, -- min and max width of the columns
            spacing = 3, -- spacing between columns
        },
        win = {
            width = 75,
            title = true,
            height = { min = 5, max = 30 },
            col = -1,
            -- padding = { 1, 1 },
        },
    },
    keys = {
        {
            "<leader>?",
            function ()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
}
