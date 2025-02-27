return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "echasnovski/mini.icons" },
    config = function()
        require("lualine").setup({
            options = {
                icons_enabled = true,
                theme = "catppuccin",
                section_separators = '',
                component_separators = '',
                globalstatus = true,
            },
        })
    end
}
