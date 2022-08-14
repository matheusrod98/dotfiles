require('onedark').setup  {
    style = 'deep', -- Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = true,
    term_colors = true,

    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    diagnostics = {
        darker = true,
        undercurl = true,
        background = false,
    },
}

require('onedark').load()
