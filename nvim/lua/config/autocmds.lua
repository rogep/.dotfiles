-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- see lint.lua
-- vim.api.nvim_create_autocmd({ "InsertLeave", "BufWritePost" }, {
--   callback = function()
--     require("lint").try_lint()
--   end,
-- })
