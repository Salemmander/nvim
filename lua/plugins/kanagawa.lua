return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false, -- Load immediately to set colorscheme
    priority = 1000, -- Load before other plugins
    opts = {
      compile = true, -- Enable compiling to Lua bytecode for faster startup
      theme = "dragon", -- Default theme: "wave", "dragon", or "lotus"
      background = {
        dark = "dragon", -- Dark theme
        light = "lotus", -- Light theme
      },
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none", -- No background for line numbers
            },
          },
        },
      },
    },
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd([[colorscheme kanagawa]]) -- Set as active colorscheme
    end,
  },
}
