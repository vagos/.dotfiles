vim.cmd('set termguicolors')
vim.cmd('colorscheme landscape')

require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared

  },
  exclude = {}, -- table: groups you don't want to clear
})