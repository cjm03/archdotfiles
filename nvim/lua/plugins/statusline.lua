--return {
--    "yorik1984/lualine-theme.nvim",
--    dependencies = { "echasnovski/mini.icons", "nvim-lualine/lualine.nvim" },
--    config = function()
--        require("lualine").setup({
--            options = {
--                theme = "newpaper-light" --prev: "modus-viviendi", "material", "nord"
--            },
--        })
--    end
--}

return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "echasnovski/mini.icons" },
    config = function()
        require("lualine").setup({
            options = {
                --icons_enabled = true,
                theme = "auto", --prev: "modus-viviendi", "material", "nord"
                --section_separators = '',
                --component_separators = '',
                --globalstatus = false,
            },
        })
    end
}


