local setup, dashboard = pcall(require, "dashboard")
if not setup then
	return
end

-- local emoji = "💭 "
-- local handle = io.popen("fortune")
-- local footer_text = handle:read("*a")
-- footer_text = footer_text:gsub("\n", "")
-- footer_text = emoji .. footer_text
-- handle:close()

dashboard.setup({
	theme = "hyper",
	config = {
		week_header = { enable = true },
		packages = { enable = false },
		shortcut = {
			{ desc = " Logseq", action = "e ~/Logseq", key = "l" },
			{ desc = " File browser", action = "e .", key = "b" },
			{ desc = " Neovim config", action = "e ~/.dotfiles/nvim/.config/nvim", key = "c" },
			{ desc = "󰏖 Update plugins", action = "Lazy update", key = "u" },
		},
		project = { enable = true, limit = 8, icon = '󱌣 ', label = 'Recent projects: ', action = 'Telescope find_files cwd=' },
		mru = { enable = false, limit = 8, icon = '󰥔 ', label = 'Recent files: ', },
		footer = {},
	},
})

-- dashboard.setup({
-- 	theme = 'doom',
-- 	config = {
-- 		header = {
-- 			[[                                                   ]],
-- 			[[                                              ___  ]],
-- 			[[                                           ,o88888 ]],
-- 			[[                                        ,o8888888' ]],
-- 			[[                  ,:o:o:oooo.        ,8O88Pd8888"  ]],
-- 			[[              ,.::.::o:ooooOoOoO. ,oO8O8Pd888'"    ]],
-- 			[[            ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"      ]],
-- 			[[           , ..:.::o:ooOoOOOO8OOOOo.FdO8O8"        ]],
-- 			[[          , ..:.::o:ooOoOO8O888O8O,COCOO"          ]],
-- 			[[         , . ..:.::o:ooOoOOOO8OOOOCOCO"            ]],
-- 			[[          . ..:.::o:ooOoOoOO8O8OCCCC"o             ]],
-- 			[[             . ..:.::o:ooooOoCoCCC"o:o             ]],
-- 			[[             . ..:.::o:o:,cooooCo"oo:o:            ]],
-- 			[[          `   . . ..:.:cocoooo"'o:o:::'            ]],
-- 			[[          .`   . ..::ccccoc"'o:o:o:::'             ]],
-- 			[[         :.:.    ,c:cccc"':.:.:.:.:.'              ]],
-- 			[[       ..:.:"'`::::c:"'..:.:.:.:.:.'               ]],
-- 			[[     ...:.'.:.::::"'    . . . . .'                 ]],
-- 			[[    .. . ....:."' `   .  . . ''                    ]],
-- 			[[  . . . ...."'                                     ]],
-- 			[[  .. . ."'                                         ]],
-- 			[[ .                                                 ]],
-- 			[[                                                   ]],
-- 		},
-- 		center = {
-- 			{ icon = ' ', desc = 'Dotfiles', key = 'd', action = 'e ~/.dotfiles' },
-- 			{ icon = ' ', desc = 'Logseq', key = 'l', action = 'e ~/Logseq' },
-- 			{ icon = ' ', desc = 'Update plugins', key = 'u', action = 'Lazy update' },
-- 			{ icon = ' ', desc = "File browser", action = "e .", key = "b" },
-- 		},
-- 		footer = {
            
--         }
-- 	}
-- })
