return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    ensure_installed = {
      "bash",
      "c",
      "c++",
      "css",
      "html",
      "go",
      "javascript",
      "json",
      "lua",
      "markdown",
      "python",
      "typescript",
      "yaml",
      "vim",
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
  },
}
