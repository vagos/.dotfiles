vim.cmd('colorscheme base16-gruvbox-dark-pale')

require("transparent").setup({
  extra_groups = { -- table/string: additional groups that should be cleared

  },
  exclude_groups = {}, -- table: groups you don't want to clear
})
