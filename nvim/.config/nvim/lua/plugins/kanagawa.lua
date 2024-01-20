return {
    'rebelot/kanagawa.nvim',
    config = function ()
        require('kanagawa').setup({
            compile = true,
            dimInactive = true,
            terminalColors = true,
            colors = {
                palette = {},
                theme = { wave = {}, lotus = {}, dragon = {},
                    all = {
                        ui = {
                            bg_gutter = "none"
                        }
                    }
                }
            },
            overrides = function(colors)
                local theme = colors.theme
                return { }
            end,
            background = {
                dark = "dragon",
                light = "lotus"
            },
        })
    end
}
