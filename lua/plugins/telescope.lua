return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      pickers = {
        find_files = {
          find_command = { "fd", "--type", "f", "--hidden", "--no-ignore", "--exclude", ".git" },
        },
        live_grep = {
          additional_args = { "--hidden", "--no-ignore", "--glob", "!.git/" },
        },
      },
    },
    config = function(_, opts)
      require("telescope").setup(opts)
      local telescope = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Find Files" })
      vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "Live Grep" })
      require("which-key").add({
        { "<leader>f", group = "Find" },
        { "<leader>ff", desc = "Find Files (all files)" },
        { "<leader>fg", desc = "Live Grep (all files)" },
      })
    end,
  },
}
