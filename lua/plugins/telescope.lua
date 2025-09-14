return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Find Files" })
      vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "Live Grep" })
    end,
  },
}
