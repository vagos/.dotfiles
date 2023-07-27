require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").ltex.setup({
    filetypes = { "tex", "bib" },
    autostart = false,
})
