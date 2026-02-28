return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            ensure_installed = {
                "html",
                "css",
                "javascript",
                "typescript",
                "svelte",
                "tsx",
                "lua",
                "vim",
                "vimdoc",
                "query",
            },
            highlight = { enable = true, additional_vim_regex_highlighting = false, },
            auto_install = true,
        }
    },
}
