return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false,   
    config = function()
	    require("neo-tree").setup({
		    window =  {
			    width = 30,
		    },
		    source_selector = {
			    winbar = true,
			    content_layout = "center",

		    },
	    })
    end,
    }
}
