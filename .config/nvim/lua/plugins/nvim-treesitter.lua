return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  opts = {
      ensure_installed = {"lua"},
      auto_install = true,
      highlight = {
          enable = true,
      },
      prefer_git = true,
      folds = {
          enabled = true,
      },
  },
}
