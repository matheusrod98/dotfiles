return {
    "rebelot/kanagawa.nvim",
    config = function()
        require('kanagawa').setup({
            compile = true,            
            dimInactive = true,        
            background = {              
                dark = "dragon",          
                light = "lotus"
            },
        })
    end,
}
