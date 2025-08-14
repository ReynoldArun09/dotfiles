-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Neo tree
vim.keymap.set("n", "<Leader>e", "<Cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" })
vim.keymap.set("n", "<Leader>o", function()
	if vim.bo.filetype == "neo-tree" then
		vim.cmd.wincmd("p")
	else
		vim.cmd("Neotree focus")
	end
end, { desc = "Focus Neo-tree" })

-- Save file
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)
vim.keymap.set("i", "jj", function()
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
	vim.cmd("w")
end, { noremap = true, silent = true })

-- save file without auto-formatting
vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w <CR>", opts)

-- quit file
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", opts) -- close buffer
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", opts) -- new buffer

-- Toggle line wrapping
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", opts)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Find and center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Diagnostic keymaps
vim.keymap.set("n", "[d", function()
	vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Go to previous diagnostic message" })

vim.keymap.set("n", "]d", function()
	vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Go to next diagnostic message" })

--ToggleTerm keymaps
vim.keymap.set("n", "<Leader>tf", "<Cmd>ToggleTerm direction=float<CR>", { desc = "ToggleTerm float" })

vim.keymap.set(
	"n",
	"<Leader>th",
	"<Cmd>ToggleTerm size=10 direction=horizontal<CR>",
	{ desc = "ToggleTerm Horizontal" }
)

vim.keymap.set("n", "<Leader>tv", "<Cmd>ToggleTerm size=80 direction=vertical<CR>", { desc = "ToggleTerm vertical" })
