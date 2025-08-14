return {
	"saghen/blink.cmp",
	version = "1.*",
	dependencies = {
		{ "L3MON4D3/LuaSnip", version = "v2.*" },
		{
			"rafamadriz/friendly-snippets",
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load()
			end,
		},
	},
	opts = {
		keymap = {
			preset = "default",
			["<Enter>"] = { "accept", "fallback" },
		},
		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},
		completion = {
			menu = {
				border = "rounded",
			},
			ghost_text = {
				enabled = true,
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 500,
				window = {
					border = "rounded",
					desired_min_width = 30,
				},
			},
		},
		signature = { enabled = true },
		snippets = {
			preset = "luasnip",
			vscode = { enabled = true },
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		fuzzy = {
			implementation = "lua",
		},
	},
	config = function(_, opts)
		require("blink-cmp").setup(opts)
	end,
}
