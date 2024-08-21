local lsp = require('lsp-zero')
local cmp = require('cmp')

lsp.preset('recommended')

-- lsp.skip_server_setup({'ltex'})

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

require('lspconfig').tsserver.setup({
    init_options = {
        preferences = {
            disableSuggestions = true,
        },
    },
})

require('lspconfig').pylsp.setup({
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    ignore = { "E501" },
                    maxLineLength = 120
                }
            }
        }
    }
})

-- Disable the E501 error for python
require('lspconfig').pyright.setup({
  settings = {
    python = {
      analysis = {
        errors = {
          E501 = false
        }
      }
    }
  }
})

require('lspconfig').rust_analyzer.setup({
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

    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),

    sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        { name = "luasnip" },
        { name = "nvim_lsp_signature_help" },
    }
})
