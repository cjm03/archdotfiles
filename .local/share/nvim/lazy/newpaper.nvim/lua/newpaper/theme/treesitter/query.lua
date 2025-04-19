local M = {}

function M.setup(configColors, configStyle)
    local newpaper = configColors
    local style    = configStyle

    return {
        ["@constant.query"]          = { link = "@constant.builtin" },
        ["@keyword.directive.query"] = { fg = newpaper.keywords, style = style.k_style },
        ["@operator.dot.query"]      = { fg = newpaper.redorange, style = style.d_style, nocombine = true },
        ["@property.query"]          = { fg = newpaper.darkyellow, nocombine = true },
        ["@type.query"]              = { fg = newpaper.tex_teal },
        ["@variable.query"]          = { fg = newpaper.darkengreen, style = style.v_style },
    }
end

return M
