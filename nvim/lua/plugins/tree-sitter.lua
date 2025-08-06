return {
  -- Highlight, edit, and navigate code
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  main = "nvim-treesitter.configs", -- Sets main module to use for opts
  opts = {
    ensure_installed = {
      "lua",
      "javascript",
      "typescript",
      "vimdoc",
      "vim",
      "regex",
      "sql",
      "dockerfile",
      "toml",
      "json",
      "go",
      "gitignore",
      "graphql",
      "yaml",
      "make",
      "cmake",
      "markdown",
      "markdown_inline",
      "bash",
      "tsx",
      "css",
      "html",
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = {},
    },
    indent = {
      enable = true,
      disable = {},
    },
  },
}

