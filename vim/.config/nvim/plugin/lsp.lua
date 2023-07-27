local lsp = require('lsp-zero')
local cmp = require('cmp')

lsp.preset('recommended')

lsp.ensure_installed({ })
lsp.skip_server_setup({'ltex'})

lsp.set_preferences({
  suggest_lsp_servers = true,
  setup_servers_on_start = false,
  set_lsp_keymaps = true,
  configure_diagnostics = true,
  cmp_capabilities = true,
  manage_nvim_cmp = true,
  call_servers = 'local',
  sign_icons = { }
})


lsp.setup()

-- after setup

vim.diagnostic.config({
  virtual_text = true,
  signs = false,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = {
      focusable = false,
      style = 'minimal',
      border = 'single',
      source = 'always',
      header = '',
      prefix = '',
    },
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, {
         border = "single",
    }
)

require('lspconfig.ui.windows').default_options = {
  border = "none"
}

cmp.setup({
    window = {
        completion = cmp.config.window.bordered({
            border = "none"
        }),
        documentation = cmp.config.window.bordered({
            border = "single"
        })
    },

    sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        { name = "luasnip" },
        { name = "nvim_lsp_signature_help" },
    }
})
