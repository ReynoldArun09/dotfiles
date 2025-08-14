return {
  "AstroNvim/astrotheme",
  priority = 1000,  -- load before other UI plugins
  lazy = false,     -- load at startup
  opts = {
    style = "astrodark", -- "astrodark", "astro", "moon", "light"
    transparent = false,
    terminal_colors = true,
    plugins = { -- enable UI plugins support
      ["nvim-tree"] = true,
      ["telescope"] = true,
    },
  },
  config = function(_, opts)
    require("astrotheme").setup(opts)
    vim.cmd("colorscheme astrotheme")
  end,
}

