return {
    "ravitemer/mcphub.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
    cmd = "MCPHub",
    -- build = "npm install -g mcp-hub",
    config = function() require("mcphub").setup({auto_approve = false}) end
}
