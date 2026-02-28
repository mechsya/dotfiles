return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')
            -- Mapping tombol agar mirip VS Code
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Cari File' })
            vim.keymap.set('n', '<leader>lg', builtin.live_grep, { desc = 'Cari Teks (Grep)' })
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Lihat Tab Aktif' })
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Cari Dokumentasi' })

            local telescope = require('telescope')
            telescope.setup({
                defaults = {
                    file_ignore_patterns = { "node_modules", ".git" },
                    preview = {},
                    -- Mengatur layout agar preview muncul di sebelah kanan
                    layout_strategy = "horizontal",
                    layout_config = {
                        horizontal = {
                            preview_width = 0.55, -- Ukuran preview 55% dari layar
                            results_width = 0.8,
                        },
                        width = 0.87,
                        height = 0.80,
                        preview_cutoff = 120, -- Preview hilang jika lebar layar < 120 karakter
                    },
                    -- Membuat tampilan lebih bersih (tanpa garis border yang ramai)
                    path_display = { "truncate" },
                },
            })
        end
    }
}
