return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" }, -- Load saat buka file
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                -- Tentukan bahasa apa saja yang pakai Prettier
                javascript = { "prettier" },
                typescript = { "prettier" },
                html = { "prettier" },
                css = { "prettier" },
                json = { "prettier" },
                markdown = { "prettier" },
                lua = { "stylua" }, -- Contoh formatter lain
            },
            -- Format saat simpan file
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            },
        })
    end,
}
