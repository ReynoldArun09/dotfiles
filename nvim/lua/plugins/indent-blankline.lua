return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = {
    indent = {
      char = '▏',
    },
    scope = {
      show_start = false,
      show_end = false,
      show_exact_scope = false,
    },
    exclude = {
      filetypes = {
        'help',
        'startify',
        'dashboard',
        'packer',
        'neogitstatus',
        'NvimTree',
        'Trouble',
      },
    },
  },
  config = function(_, opts)
    -- Set up the highlight groups before initializing the plugin
    vim.api.nvim_set_hl(0, "IblIndent", { fg = "#3c3c3c" })
    vim.api.nvim_set_hl(0, "IblScope", { fg = "#525252" })
    
    require("ibl").setup(opts)
  end,
}
