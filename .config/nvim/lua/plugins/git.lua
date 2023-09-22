return {
  { "ThePrimeagen/git-worktree.nvim" },
  {
    "telescope.nvim",
    dependencies = {
      "ThePrimeagen/git-worktree.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("git_worktree")
      end,
    },
  },
}
