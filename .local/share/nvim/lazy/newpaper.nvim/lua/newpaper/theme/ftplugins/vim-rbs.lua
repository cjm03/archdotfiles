local M = {}

function M.setup(configColors, configStyle)
    local newpaper = configColors
    local style    = configStyle

    return {
        rbsDefine                  = { fg = newpaper.keywords, style = style.k_style },
        rbsClassNameDefinition     = { fg = newpaper.ruby_navy, style = style.k_style },
        -- rbsDelimiter                 Delimiter
        -- rbsTypeVariable              Identifier
        rbsInheritanceOperator     = { fg = newpaper.navy, style = style.o_style },
        -- rbsSuperclassName            rbsClassName
        rbsModuleNameDefinition    = { fg = newpaper.teal, style = style.k_style },
        rbsInclusionOperator       = { fg = newpaper.navy, style = style.o_style },
        -- rbsModuleSelfType            rbsClassName
        rbsInterfaceNameDefinition = { fg = newpaper.maroon },
        -- rbsKeyword                   Keyword
        rbsTypeAlias               = { fg = newpaper.keywords, style = style.k_style },
        rbsAliasNameDefinition     = { fg = newpaper.blue, style = style.k_style },
        rbsAliasOperator           = { fg = newpaper.tag_navy, style = style.o_style },
        rbsAliasNamespace          = { fg = newpaper.teal, style = style.k_style },
        -- rbsAliasNamespaceSeparator   rbsNamespaceSeparator
        rbsConstant                = { fg = newpaper.ocean, style = style.k_style },
        rbsDeclarationOperator     = { fg = newpaper.navy, style = style.o_style },
        rbsGlobal                  = { fg = newpaper.green, style = style.k_style },
        -- rbsComment                   Comment
        -- rbsCommentStart              rbsComment
        rbsInstanceVariable        = { fg = newpaper.darkengreen, style = style.v_style },
        rbsMethod                  = { fg = newpaper.keywords, style = style.k_style },
        rbsMethodName              = { fg = newpaper.ruby_navy },
        -- rbsMethodDeclarationOperator rbsDeclarationOperator
        -- rbsMethodUnaryOperator       rbsUnaryOperator
        rbsMethodArrow             = { fg = newpaper.navy, style = style.o_style },
        rbsMethodType              = { fg = newpaper.darkgreen, nocombine = true },
        rbsAttribute               = { fg = newpaper.magenta },
        rbsAttributeName           = { fg = newpaper.darkyellow },
        -- rbsAttributeVariableName     rbsInstanceVariable
        -- rbsInclude                   Statement
        -- rbsExtend                    Statement
        -- rbsPrepend                   Statement
        rbsMethodAlias             = { fg = newpaper.keywords, style = style.k_style },
        -- rbsMethodAliasName           rbsMethodName
        rbsMethodSelf              = { fg = newpaper.maroon, style = style.v_style },
        rbsMethodSelfModifier      = { fg = newpaper.maroon, style = style.o_style },
        rbsMethodDot               = { fg = newpaper.redorange },
        rbsNamespaceSeparator      = { fg = newpaper.redorange },
        rbsClassName               = { link = "rbsClassNameDefinition" },
        rbsInterfaceName           = { fg = newpaper.redorange },
        rbsSingleton               = { fg = newpaper.green },
        -- rbsString                    String
        -- rbsStringStart               rbsString
        -- rbsStringEnd                 rbsStringStart
        rbsStringEscape            = { fg = newpaper.redorange },
        -- rbsQuoteEscape               rbsStringEscape
        --
        -- rbsParenthesisEscape         rbsStringEscape
        -- rbsSquareBracketEscape       rbsStringEscape
        -- rbsCurlyBraceEscape          rbsStringEscape
        -- rbsAngleBracketEscape        rbsStringEscape
        rbsSymbol                  = { fg = newpaper.darkyellow },
        -- rbsSymbolStart               rbsSymbol
        -- rbsSymbolEnd                 rbsSymbolStart
        rbsUnaryOperator           = { fg = newpaper.navy, style = style.o_style },
        -- rbsInteger                   Number
        -- rbsBoolean                   Boolean
        -- rbsRecordName                rbsSymbol
        rbsType                    = { fg = newpaper.olive, style = style.v_style },
        rbsTypeOperator            = { fg = newpaper.tag_navy, style = style.o_style },
        -- rbsOptionalTypeOperator      rbsTypeOperator
    }
end

return M
