local lsp = require('lsp-zero')
local cmp = require('cmp')

lsp.preset('recommended')

lsp.set_preferences({
  suggest_lsp_servers = true,
  setup_servers_on_start = true,
  set_lsp_keymaps = true,
  configure_diagnostics = true,
  cmp_capabilities = true,
  manage_nvim_cmp = true,
  call_servers = 'local',
  sign_icons = { }
})


lsp.ensure_installed({
  'tsserver',
  'eslint',
  'rust_analyzer',
  'clangd',
  'texlab'
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
      border = 'none',
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
            border = "none"
        })
    }
})
