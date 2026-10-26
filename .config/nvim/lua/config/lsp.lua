vim.diagnostic.config({
    update_in_insert = true,
    virtual_text = true,
    signs = true,
    underline = true,
    severity_sort = true,
    float = {
        border = "rounded",
        source = true,
    },
})

vim.lsp.config("wolfram", {
    cmd = {
        "wolfram",
        "-noinit", "-noprompt", "-nopaclet", "-noicon", "-nostartuppaclets", "-run",
        'Needs["LSPServer`"];LSPServer`StartServer[]',
    },
    filetypes ={ "mma"},
    vim.filetype.add({
    extension = { wl = "mma", wls = "mma", fr = "mma", m = "mma" },
    }),
    on_init = function (client)
        client.server_capabilities.semanticTokensProvider = nil
    end,
})
vim.lsp.enable("wolfram")
