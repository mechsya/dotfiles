return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- Wajib untuk icon
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("neo-tree").setup({
                close_if_last_window = true, -- Tutup otomatis jika tinggal sidebar saja
                filesystem = {
                    filtered_items = {
                        visible = false, -- Tampilkan file tersembunyi jika true
                        hide_dotfiles = false,
                        hide_gitignored = true,
                        hide_by_name = {
                            "node_modules",
                        },
                    },
                    follow_current_file = {
                        enabled = true,            -- Otomatis fokus ke file yang sedang dibuka
                    },
                    use_libuv_file_watcher = true, -- Update otomatis jika file berubah di luar nvim
                },
                window = {
                    width = 30,
                    auto_close = true,
                    mappings = {
                        ["<space>"] = "none", -- Matikan mapping default space agar tidak bentrok leader
                    },
                },
            })

            -- Keymap untuk Toggle Sidebar (Spasi + e)
            vim.keymap.set('n', '<leader>e', ':Neotree toggle left<CR>', { desc = "Toggle Neo-tree" })
        end
    }
}
