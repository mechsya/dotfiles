require("config.lazy");
require("config.options");
require("config.keymaps");

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
    pattern = "*.svelte",
    callback = function()
        vim.bo.filetype = "svelte"
    end,
})
