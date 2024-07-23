require("trouble").setup {

}

vim.keymap.set("n", "<leader>xx", ":Trouble diagnostics toggle<cr>",
  {silent = true, noremap = true}
)
