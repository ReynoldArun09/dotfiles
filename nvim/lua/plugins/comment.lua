return {
  "numToStr/Comment.nvim",
  event = "VeryLazy",
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    require("Comment").setup({
      pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
    })

    -- Custom keymaps using <leader>c instead of <leader>/
    vim.keymap.set("n", "<leader>c", function()
      require("Comment.api").toggle.linewise.current()
    end, { desc = "Toggle comment" })

    vim.keymap.set("x", "<leader>c", function()
      require("Comment.api").toggle.linewise(vim.fn.visualmode())
    end, { desc = "Toggle comment" })
  end,
}
