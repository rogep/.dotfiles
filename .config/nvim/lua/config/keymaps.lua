-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
    "n",
    "<leader>sx",
    require("telescope.builtin").resume,
    { noremap = true, silent = true, desc = "Resume" }
)

-- Movements
vim.api.nvim_set_keymap(
    "n",
    "<C-d>",
    "<C-d>zz",
    { noremap = true, silent = true }
) -- centres curser after a page down event
vim.api.nvim_set_keymap(
    "n",
    "<C-u>",
    "<C-u>zz",
    { noremap = true, silent = true }
) -- centres cursor after a page up event
vim.keymap.set(
    "n",
    "<C-s>",
    ":wa<CR>",
    { silent = true, desc = "Save all buffers" }
)

-- Keep cursor in same spot after yanking in visual mode
vim.keymap.set("v", "y", "m`y``gv")
