local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

nvimtree.setup {
    disable_netrw = true,
    hijack_netrw = true,
    hijack_directories = {
        auto_open = true,
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        debounce_delay = 50,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    actions = {
        open_file = {
          quit_on_open = true,
        }
    },
    trash = {
        cmd = "distrobox-host-exec gio trash",
        require_confirm = true,
    },
}
