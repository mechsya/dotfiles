return {
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = true,
            styles = {
                comments = { italic = true },
                keywords = { italic = true },
                functions = {},
                variables = {},
                sidebars = "transparent",
                floats = "transparent",
            },
        },
        config = function(_, opts)
            require("solarized-osaka").setup(opts)
            vim.cmd.colorscheme("solarized-osaka")
        end,
    }
}
