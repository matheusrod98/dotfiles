return {
    'stevearc/overseer.nvim',
    dependencies = {
        "stevearc/dressing.nvim", "nvim-telescope/telescope.nvim",
        "rcarriga/nvim-notify"
    },
    config = function() require('overseer').setup() end
}
