local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

treesitter.setup({
  highlight = {
    enable = true,
  },
  indent = { enable = false }, -- Still experimental, messing my identation
  autotag = { enable = true },
  ensure_installed = "all",
  auto_install = true,
})
