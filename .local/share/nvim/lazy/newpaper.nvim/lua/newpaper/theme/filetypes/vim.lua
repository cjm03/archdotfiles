local M = {}

function M.setup(configColors, configStyle)
    local newpaper = configColors
    local style    = configStyle

    return {
        vimCommentTitle = { fg = newpaper.comments, style = style.c_title }
    }
end

return M
