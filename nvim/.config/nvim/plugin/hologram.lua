local hologram_setup, hologram = pcall(require, "hologram")
if not hologram_setup then
  return
end

hologram.setup{
    auto_display = true
}
