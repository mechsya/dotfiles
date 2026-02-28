return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            -- List LSP yang wajib ada
            ensure_installed = { "lua_ls", "ts_ls", "html", "cssls", "svelte" },
        })
    end,
}
