local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {
  options = {
    numbers = "none",
    offsets = {
      {
        filetype = "NvimTree",
        text = "",
        padding = 1
      }
    },
  },
}
