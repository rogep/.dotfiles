return {

  {
    'ThePrimeagen/harpoon',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope.nvim' },
    },
    keys = {
      {
        '<leader>hh',
        ":lua require('harpoon.ui').toggle_quick_menu()<CR>",
        desc = 'Harpoon menu',
      },
      -- { "<leader>ht", ":Telescope harpoon marks<CR>", desc = "Telescope menu" },

      {
        '<leader>ha',
        ":lua require('harpoon.mark').add_file()<CR>",
        desc = 'Add file as marked',
      },
      {
        '<leader>hn',
        ":lua require('harpoon.ui').nav_next()<CR>",
        desc = 'Next file',
      },
      {
        '<leader>hp',
        ":lua require('harpoon.ui').nav_prev()<CR>",
        desc = 'Previous file',
      },
      {
        '<leader>ht',
        ":lua require('harpoon.term').gotoTerminal(1)<CR>",
        desc = 'Terminal',
      },
      {
        '<leader>1',
        ":lua require('harpoon.ui').nav_file(1)<CR>",
        desc = 'Harpoon mark 1',
      },
      {
        '<leader>2',
        ":lua require('harpoon.ui').nav_file(2)<CR>",
        desc = 'Harpoon mark 2',
      },
      {
        '<leader>3',
        ":lua require('harpoon.ui').nav_file(3)<CR>",
        desc = 'Harpoon mark 3',
      },
      {
        '<leader>4',
        ":lua require('harpoon.ui').nav_file(4)<CR>",
        desc = 'Harpoon mark 4',
      },
    },
    config = function()
      require('telescope').load_extension 'harpoon'
    end,
  },
}
