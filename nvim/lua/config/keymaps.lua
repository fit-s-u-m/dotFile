local discipline = require("my.discipline")
local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

keymaps.set("n", ";", "<Nop>")

discipline.cowboy()
-- increment/decrement
keymaps.set("n", "+", "<C-a>")
keymaps.set("n", "-", "<C-x>")

-- select All
keymaps.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymaps.set("n", "te", ":tabedit")
keymaps.set("n", "<tab>", ":tabnext<Return>", opts)
keymaps.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Resize window
keymaps.set("n", "<C-w><left>", "<C-w><")
keymaps.set("n", "<C-w><right>", "<C-w>>")
keymaps.set("n", "<C-w><up>", "<C-w>+")
keymaps.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
keymaps.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- Do things without affecting the registers
keymaps.set("n", "x", '"_x')
keymaps.set("n", "<Leader>p", '"0p')
keymaps.set("n", "<Leader>P", '"0P')
keymaps.set("v", "<Leader>p", '"0p')
keymaps.set("n", "<Leader>c", '"_c')
keymaps.set("n", "<Leader>C", '"_C')
keymaps.set("v", "<Leader>c", '"_c')
keymaps.set("v", "<Leader>C", '"_C')
keymaps.set("n", "<Leader>d", '"_d')
keymaps.set("n", "<Leader>D", '"_D')
keymaps.set("v", "<Leader>d", '"_d')
keymaps.set("v", "<Leader>D", '"_D')
-- to toogle highlight
keymaps.set("n", "<c-l>", ":set hlsearch!<cr>", opts)
