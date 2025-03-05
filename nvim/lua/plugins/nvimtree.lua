return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
  },
  config = function()
      require("neo-tree").setup({
          filesystem = {
              filtered_items = {
                  hide_hidden = false,
                  hide_dotfiles = false,
              },
          },
      })
      vim.keymap.set('n', '<leader>ee', ':Neotree filesystem reveal left<CR>', { desc = "reveal/activate file explorer" })
      vim.keymap.set('n', '<leader>ex', ':Neotree filesystem toggle<CR>', { desc = "Expand/collapse file explorer" })
  end
}


