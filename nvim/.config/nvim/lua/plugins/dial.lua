return {
    "monaqa/dial.nvim",
    config = function()
        local augend = require("dial.augend")
        require("dial.config").augends:register_group{
            default = {
                augend.integer.alias.decimal, augend.integer.alias.hex,
                augend.date.alias["%Y/%m/%d"]
            },
            typescript = {
                augend.integer.alias.decimal, augend.integer.alias.hex,
                augend.constant.new {elements = {"let", "const"}}
            },
            visual = {
                augend.integer.alias.decimal, augend.integer.alias.hex,
                augend.date.alias["%Y/%m/%d"], augend.constant.alias.alpha,
                augend.constant.alias.Alpha
            }
        }
        -- " enable only for specific FileType
        -- autocmd FileType typescript lua vim.api.nvim_buf_set_keymap(0, "n", "<C-a>", require("dial.map").inc_normal("typescript"), {noremap = true})
        -- autocmd FileType typescript lua vim.api.nvim_buf_set_keymap(0, "n", "<C-x>", require("dial.map").dec_normal("typescript"), {noremap = true})
    end
}
