return {
    "nvim-telescope/telescope.nvim", tag = "0.1.2",
    dependencies = {
        { "nvim-lua/plenary.nvim" },
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
        require("telescope").setup({
            defaults = {
                file_ignore_patterns = { "^.git/", "node_modules", "%.svg" },
                -- preview = {
                --     mime_hook = function(filepath, bufnr, opts)
                --         local is_image = function(filepath)
                --             local image_extensions = {'png', 'jpg', 'jpeg', 'svg', 'gif', 'bmp', 'ico', 'tif', 'tiff', 'webp', 'heic', 'heif'}
                --             local split_path = vim.split(filepath:lower(), '.', {plain=true})
                --             local extension = split_path[#split_path]
                --             return vim.tbl_contains(image_extensions, extension)
                --         end
                --         if is_image(filepath) then
                --             local term = vim.api.nvim_open_term(bufnr, {})
                --             local function send_output(_, data, _ )
                --                 for _, d in ipairs(data) do
                --                     vim.api.nvim_chan_send(term, d..'\r\n')
                --                 end
                --             end
                --             vim.fn.jobstart({ '/home/matheus/.local/bin/kitty.app/bin/kitty','+kitten', 'icat'}, { on_stdout=send_output, stdout_buffered=true, pty=true })
                --         else
                --             require("telescope.previewers.utils").set_preview_message(bufnr, opts.winid, "Binary cannot be previewed")
                --         end
                --     end
                -- },
            },
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                }
            }
        })

        require('telescope').load_extension('fzf')
    end
}

