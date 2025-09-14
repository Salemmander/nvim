return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern", -- Use modern styling preset
      win = {
       	border = "single", -- Rounded corners for a softer look
      },
      spec = {
        { "<leader>f", group = "File" }, -- Group for Telescope file commands
        { "<leader>g", group = "Grep" }, -- Group for Telescope grep commands
      },
    },
  },
}
