local theme = os.getenv("SYSTEM_THEME")

if theme == "light" then
  vim.cmd('colorscheme paper')
else
  vim.cmd('colorscheme jellybeans')
end


vim.cmd('let g:jellybeans_use_term_italics = 1')

require("transparent").setup({ }) 
