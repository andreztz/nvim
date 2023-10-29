return {
    {
        "nvim-telescope/telescope-media-files.nvim",
        config = function()
            require("telescope").load_extension("media_files")
        end,
        opts = {
            extensions = {
                media_files = {
                    -- filetypes whitelist
                    -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
                    filetypes = { "png", "webp", "jpg", "jpeg" },
                    -- find command (defaults to `fd`)
                    find_cmd = "rg",
                },
            },
        },
    },
    {
        -- https://github.com/simrat39/symbols-outline.nvim
        "simrat39/symbols-outline.nvim",
        opts = {},
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = {
            window = {
                position = "left",
                width = 20,
            },
        },
    },
}
