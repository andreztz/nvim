return {
    {
        -- https://github.com/folke/noice.nvim/wiki
        "folke/noice.nvim",
        lazy = true,
        opts = {
            cmdline = {
                view = "cmdline",
            },
        },
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
