return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "echasnovski/mini.icons" },
    config = function()
        require("lualine").setup({
            options = {
                icons_enabled = true,
                theme = "palenight", --prev: "modus-viviendi", "material", "nord"
                section_separators = '',
                component_separators = '',
                globalstatus = false,
            },
        })
    end
}


