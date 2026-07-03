return {
    "lervag/vimtex",
    -- ft = "tex",
    init = function()
        vim.g.vimtex_view_method = "zathura"
        -- vim.g.vimtex_compiler_latexmk = {
            -- options = {
        --         "-pdf",
        --         "-synctex=1",
                -- "-outdir=build",
            -- }
        -- }
    end,
}
