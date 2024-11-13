return {
    -- { 
    --     'tjdevries/colorbuddy.nvim',
    --     config = function() 
    --         vim.cmd.colorscheme('gruvbuddy')
    --     end
    -- },

    {
        'jesseleite/nvim-noirbuddy',
        dependencies = {
            { 'tjdevries/colorbuddy.nvim' }
        },
        lazy = false,
        priority = 1000,
        opts = {},
        config = function () 
            require("noirbuddy").setup({
                styles = {
                    italic = true,
                    bold = false,
                    underline = false,
                    undercurl = true,
                },

                colors = {
                    -- background = '#0C0C0D',
                    background = '#000100',
                    primary = '#a6ff80',
                    secondary = '#e0f8cf',
                    -- noir_0 = '#ffffff',
                    noir_0 = '#6bcb96',
                    noir_1 = '#f5f5f5',
                    -- noir_2 = '#d5d5d5',
                    noir_2 = '#3c7455',
                    noir_3 = '#b4b4b4',
                    noir_4 = '#a7a7a7',
                    noir_5 = '#949494',
                    noir_6 = '#737373',
                    noir_7 = '#535353',
                    noir_8 = '#323232',
                    noir_9 = '#212121',
                    diagnostic_error = '#ff0038',
                    diagnostic_warning = '#ff7700',
                    diagnostic_info = '#47eae0',
                    diagnostic_hint = '#47eae0',
                    diff_add = '#00ff77',
                    diff_change = '#47eae0',
                    diff_delete = '#ff0038',
                },
                preset = 'minimal'
            })

            local colorbuddy = require('colorbuddy')
            local Color = colorbuddy.Color
            local colors = colorbuddy.colors
            local Group = colorbuddy.Group
            local groups = colorbuddy.groups
            local styles = colorbuddy.styles

            -- Generic Highlighting
            Group.new('Visual', nil, colors.noir_8, styles.bold)

              -- Treesitter Syntax Highlighting
            -- See :help treesitter-highlight-groups
            Group.new('@boolean', colors.primary)
            Group.new('@character', colors.secondary)
            Group.new('@character.special', colors.noir_2)
            Group.new('@comment', colors.noir_7, nil, styles.bold + styles.italic)
            Group.new('@conditional', colors.noir_2, nil, styles.bold)
            Group.new('@constant', colors.noir_2)
            Group.new('@constant.builtin', colors.noir_2)
            Group.new('@constant.macro', colors.primary)
            Group.new('@constructor', colors.noir_1)
            Group.new('@debug', colors.noir_2)
            Group.new('@define', colors.noir_2)
            Group.new('@exception', colors.noir_2)
            Group.new('@field', colors.noir_2)
            Group.new('@float', colors.noir_2, nil, styles.bold)
            Group.new('@function', colors.noir_0, nil, styles.bold)
            Group.new('@function.builtin', colors.noir_2, nil, styles.bold)
            Group.new('@function.call', colors.noir_2, nil, styles.bold)
            Group.new('@function.macro', colors.primary, nil, styles.bold)
            Group.new('@include', colors.noir_6, nil, styles.bold)
            Group.new('@keyword', colors.noir_5, nil, styles.bold)
            Group.new('@keyword.function', colors.noir_5, nil, styles.bold)
            Group.new('@keyword.operator', colors.noir_6, nil, styles.bold)
            Group.new('@keyword.return', colors.noir_0, nil, styles.bold)
            Group.new('@label', colors.noir_2, nil, styles.bold)
            Group.new('@macro', colors.primary)
            Group.new('@method', colors.noir_1, nil, styles.bold)
            Group.new('@method.call', colors.noir_2, nil, styles.bold)
            Group.new('@namespace', colors.noir_2, nil, styles.bold)
            Group.new('@none', colors.noir_3, nil, styles.bold)
            Group.new('@number', colors.primary)
            Group.new('@operator', colors.noir_6)
            Group.new('@parameter', colors.noir_2)
            Group.new('@preproc', colors.noir_2)
            Group.new('@property', colors.noir_2)
            Group.new('@punctuation', colors.noir_2)
            Group.new('@punctuation.bracket', colors.noir_6)
            Group.new('@punctuation.delimiter', colors.noir_6)
            Group.new('@punctuation.special', colors.primary)
            Group.new('@repeat', colors.noir_2)
            Group.new('@storageclass', colors.noir_2)
            Group.new('@string', colors.primary)
            Group.new('@string.escape', colors.noir_2)
            Group.new('@string.special', colors.noir_2)
            Group.new('@structure', colors.noir_2, nil, styles.bold)
            Group.new('@tag', colors.noir_6)
            Group.new('@tag.attribute', colors.noir_4)
            Group.new('@tag.delimiter', colors.noir_3)
            Group.new('@text.literal', colors.secondary)
            Group.new('@text.reference', colors.secondary)
            Group.new('@text.title', colors.noir_2)
            Group.new('@text.todo', colors.noir_2)
            Group.new('@text.underline', colors.noir_2)
            Group.new('@text.uri', colors.noir_2)
            Group.new('@type', colors.noir_2, nil, styles.bold)
            Group.new("@identifier", colors.noir_0, nil, styles.bold)
            Group.new('@type.builtin', colors.noir_6, nil, styles.bold)
            Group.new('@type.definition', colors.noir_2, nil, styles.bold)
            Group.new('@variable', colors.secondary)
            Group.new('@variable.builtin', colors.noir_2)
            Group.new('@lsp.type.function', colors.noir_0)
            Group.new('@lsp.type.macro', colors.primary)
            Group.new('@lsp.type.method', colors.noir_2)
        end
    }
}
