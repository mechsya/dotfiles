return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = {
            -- Menghapus baris judul "Explorer" di bagian atas
            renderers = {
                header = {}, -- Mengosongkan renderer header
            },
            -- Opsional: Menghapus baris "root" folder jika ingin lebih bersih lagi
            hide_root_node = true,
        },
    },
}
