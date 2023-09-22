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
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true }) -- centres curser after a page down event
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true }) -- centres cursor after a page up event
vim.keymap.set("n", "<C-s>", ":wa<CR>", { silent = true, desc = "Save all buffers" })

-- Keep cursor in same spot after yanking in visual mode
vim.keymap.set("v", "y", "m`y``gv")

-- drag lines
vim.keymap.set("v", "<Leader>j", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<Leader>k", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("n", "<C-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==", { desc = "Move line up" })

-- Set redo to U
vim.keymap.set("n", "U", "<C-r>", { desc = "Redo" })

-- Git Worktrees
vim.keymap.set(
  "n",
  "<leader>wc",
  "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
  { desc = "Create worktree", silent = true }
)

vim.keymap.set(
  "n",
  "<leader>ws",
  "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
  { desc = "Switch worktrees", silent = true }
)

-- tmux
vim.keymap.set(
  "n",
  "<leader>t",
  "<CMD>!tmux neww ~/.local/scripts/tmux-sessioniser<CR>",
  { desc = "tmux sessioniser", silent = true, noremap = true }
)
