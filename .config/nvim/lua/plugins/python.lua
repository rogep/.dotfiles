return {
    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            table.insert(opts.ensure_installed, "black")
        end,
    },

    -- {
    --     "linux-cultist/venv-selector.nvim",
    --     cmd = "VenvSelect",
    --     opts = {},
    --     keys = {
    --         {
    --             "<leader>cv",
    --             "<cmd>:VenvSelect<cr>",
    --             desc = "Select VirtualEnv",
    --         },
    --     },
    -- },

    --   {
    --       "mfussenegger/nvim-dap-python",
    -- -- stylua: ignore
    --       keys = {
    --         { "<leader>dPt", function() require('dap-python').test_method() end, desc = "Debug Method" },
    --         { "<leader>dPc", function() require('dap-python').test_class() end, desc = "Debug Class" },
    --       },
    --       config = function()
    --           local path = require("mason-registry")
    --               .get_package("debugpy")
    --               :get_install_path()
    --           require("dap-python").setup(path .. "/venv/bin/python")
    --       end,
    --   },
    --
    --     {
    --         "nvim-treesitter/nvim-treesitter",
    --         opts = function(_, opts)
    --             if type(opts.ensure_installed) == "table" then
    --                 vim.list_extend(
    --                     opts.ensure_installed,
    --                     { "ninja", "python", "rst", "toml" }
    --                 )
    --             end
    --         end,
    --     },
}
