--return {
--    "nvim-neo-tree/neo-tree.nvim",
--    branch = "v3.x",
--    dependencies = {
--        "nvim-lua/plenary.nvim",
--        "nvim-tree/nvim-web-devicons",
--        "MunifTanjim/nui.nvim",
--    },
--    config = function()
--        require("neo-tree").setup({
--            popup_border_style = "none",
--            filesystem = {
--                filtered_items = {
--                    hide_hidden = false,
--                    hide_dotfiles = false,
--                },
--            },
--        })
--
--        vim.api.nvim_create_autocmd("BufWinEnter", {
--            pattern = "NeoTree*",
--            callback = function()
--                local ns_id = vim.api.nvim_create_namespace("custom_neotree")
--                vim.api.nvim_set_hl(ns_id, "WinSeparator", { fg = "#303466", bg = "NONE" })
--                vim.api.nvim_win_set_hl_ns(0, ns_id)
--            end
--        })
--        vim.keymap.set('n', '<leader>ee', ':Neotree filesystem reveal left<CR>', { desc = "reveal/activate file explorer" })
--        vim.keymap.set('n', '<leader>ex', ':Neotree filesystem toggle<CR>', { desc = "Expand/collapse file explorer" })
--    end
--}

return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons", },
    config = function()
        require("nvim-tree").setup({
            filters = {
                dotfiles = true,
            },
        })
        vim.keymap.set('n', '<leader>ee', ':NvimTreeFocus<CR>', { desc = " " })
        vim.keymap.set('n', '<leader>ex', ':NvimTreeToggle<CR>', { desc = " " })
    end
}
