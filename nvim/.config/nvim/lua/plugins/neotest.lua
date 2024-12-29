return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio", "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim", "nvim-treesitter/nvim-treesitter",
        "nvim-neotest/neotest-python", "nvim-neotest/neotest-go",
        "nvim-neotest/neotest-jest", "marilari88/neotest-vitest",
        "Issafalcon/neotest-dotnet", "alfaix/neotest-gtest"
    },
    config = function()
        require("neotest").setup({
            consumers = {overseer = require("neotest.consumers.overseer")},
            adapters = {
                require("neotest-python"), require("neotest-go"),
                -- require('neotest-jest')({
                --     jestCommand = require('neotest-je"antoinemadec/FixCursorHold.nvim"st.jest-util').getJestCommand(
                --         vim.fn.expand '%:p:h') .. ' --watch'
                -- })
                require("neotest-vitest"), require("neotest-dotnet"),
                require("neotest-gtest")
            }
        })
    end
}
