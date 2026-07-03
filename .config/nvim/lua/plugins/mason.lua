return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "texlab",
            },
        },
        dependencies = {
            {
                "mason-org/mason.nvim",
                opts = {},
            },
            {
                "neovim/nvim-lspconfig",
                -- opts = {
                --     folds = {
                --         enabled = true,
                --     },
                --     codelens = {
                --         enables = true,
                --     },
                -- },
            },
        },
    },
}
