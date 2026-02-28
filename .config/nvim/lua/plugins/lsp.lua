return {
    -- 1. LSP Config (Inti dari LSP)
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            -- Setup Mason
            require("mason").setup()

            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            -- Setup Mason-LSPConfig
            require("mason-lspconfig").setup({
                handlers = {
                    function(server_name)
                        require("lspconfig")[server_name].setup({
                            capabilities = capabilities, -- <--- TAMBAHKAN INI
                        })
                    end,
                },
                -- Tulis LSP yang ingin otomatis terinstall di sini
                ensure_installed = { "lua_ls", "html", "cssls", "svelte" },
            })
        end,
    },
}
