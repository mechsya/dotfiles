return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp", -- Agar cmp bisa baca saran dari LSP
            "L3MON4D3/LuaSnip",   -- Engine untuk potongan kode (snippets)
            "saadparwaiz1/cmp_luasnip", -- Menghubungkan engine snippet ke cmp
            "hrsh7th/cmp-buffer", -- Saran kata dari file yang sedang dibuka
            "hrsh7th/cmp-path",   -- Saran saat mengetik path/lokasi file
        },
        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")

            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),  -- Paksa munculkan popup
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- 'Enter' untuk pilih
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" }, -- Prioritas utama: Saran dari LSP (log, error, dll)
                    { name = "luasnip" }, -- Saran dari Snippets
                }, {
                    { name = "buffer" }, -- Saran dari kata-kata di file ini
                    { name = "path" }, -- Saran untuk lokasi folder/file
                }),
            })
        end,
    },
}
