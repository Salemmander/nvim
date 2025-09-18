return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- For file icons
    opts = {
      view = {
        side = "left", -- Sidebar on the left
        width = {}, -- Dynamic width based on longest line
      },
      filters = {
        dotfiles = false, -- Show dotfiles (e.g., .gitignore)
        git_ignored = false, -- Show git-ignored files
      },
      git = {
        enable = true, -- Show git status icons
      },
      on_attach = function(bufnr)
        local api = require("nvim-tree.api")

        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        api.config.mappings.default_on_attach(bufnr)

        vim.keymap.set("n", "<leader>c", api.tree.change_root_to_node, opts("Change Root to Directory"))
      end,
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
