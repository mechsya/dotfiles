return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons", -- Icon keren untuk file
        },
        enabled = false,
        opts = {

        }, -- Opsi default, bisa diubah sesuai kebutuhan
        config = function()
            require("nvim-tree").setup({
                view = {
                    width = 30,
                    side = "left", -- Letak sidebar di kiri
                },
                -- Menampilkan status git (file baru/modifikasi)
                renderer = {
                    highlight_git = true,
                    icons = {
                        show = {
                            file = true,
                            folder = true,
                            folder_arrow = true,
                            git = true,
                        },
                    },
                },
                -- Filter folder sampah
                filters = {
                    dotfiles = false,
                    custom = { "node_modules", ".git" },
                },
            })

            -- Keymap untuk buka/tutup sidebar
            vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
        end,
    },
}
