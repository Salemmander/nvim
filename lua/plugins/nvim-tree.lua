return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- For file icons
    opts = {
      view = {
        side = "left", -- Sidebar on the left
        width = 30, -- Width in characters
      },
      filters = {
        dotfiles = false, -- Show dotfiles (e.g., .gitignore)
      },
      git = {
        enable = true, -- Show git status icons
      },
    },
    config = function(_, opts)
      require("nvim-tree").setup(opts)
      -- Keybinding for nvim-tree
      vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
      -- Register with which-key
      require("which-key").add({
        { "<leader>e", group = "Explorer" },
      })
    end,
  },
}
