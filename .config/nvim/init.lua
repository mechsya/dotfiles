-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE", fg = "#808080" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE", fg = "#505050" })
