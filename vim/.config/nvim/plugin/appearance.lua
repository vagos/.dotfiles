local theme = os.getenv("SYSTEM_THEME")

if theme == "light" then
  vim.cmd('colorscheme paper')
else
  vim.cmd('colorscheme landscape')
end

require("transparent").setup({ }) 
