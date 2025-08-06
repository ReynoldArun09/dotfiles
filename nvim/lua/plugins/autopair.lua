return {
  "windwp/nvim-autopairs",
  event = { "InsertEnter" },
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    local autopairs = require("nvim-autopairs")

    -- setup autopairs with treesitter
    autopairs.setup({
      check_ts = true,
      ts_config = {
        javascript = { "template_string" },
        typescript = { "template_string" },
        html = { "text" },
        css = {},
        go = {}, -- golang
      },
    })

    -- make autopairs and nvim-cmp work together
    local cmp = require("cmp")
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}

