local cmp = require('cmp')
local luasnip = require('luasnip')
local mason_lspconfig = require('mason-lspconfig')

luasnip.config.setup({})
require('luasnip.loaders.from_vscode').lazy_load()
require('mason').setup()
local capabilities = require('cmp_nvim_lsp').default_capabilities()
mason_lspconfig.setup({
  automatic_enable = false,
})

for _, server_name in ipairs(mason_lspconfig.get_installed_servers()) do
  local config = {
    capabilities = capabilities,
  }

  if server_name == "lua_ls" then
    config.settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
      },
    }
  end

  vim.lsp.config(server_name, config)
  vim.lsp.enable(server_name)
end

vim.diagnostic.config({
  virtual_text = { severity = vim.diagnostic.severity.ERROR },
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

vim.keymap.set("n", "<C-k>", function()
  vim.diagnostic.open_float(nil, {
    focusable = false,   -- Don't let it steal focus
    border = "single",
    source = "always",
    prefix = "",         -- No prefix
  })
end, { noremap = true, silent = true })

require('lspconfig.ui.windows').default_options = {
  border = "none"
}

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    window = {
        completion = cmp.config.window.bordered({
            border = "none"
        }),
        documentation = cmp.config.window.bordered({
            border = "single"
        })
    },

    mapping = cmp.mapping.preset.insert({
      ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
              cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
          elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
          else
              fallback()
          end
      end, { 'i', 's' }),
      ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
              cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
          elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
          else
              fallback()
          end
      end, { 'i', 's' }),
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
