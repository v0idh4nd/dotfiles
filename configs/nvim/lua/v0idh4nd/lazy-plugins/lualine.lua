return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 
        "jesseleite/nvim-noirbuddy",
        'nvim-tree/nvim-web-devicons' 
    },
    config = function ()

        local noirbuddy_lualine = require("noirbuddy.plugins.lualine")
        local theme = noirbuddy_lualine.theme
        local sections = noirbuddy_lualine.sections
        local inactive_sections = noirbuddy_lualine.inactive_sections


        require("lualine").setup({
            options = {
                theme = theme,
                -- theme = "codedark",
                icons_enabled = false,
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = true,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {{
                    'filename', 
                    path = 1
                }},
                lualine_x = {'encoding', 'fileformat', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        })

    end
}
