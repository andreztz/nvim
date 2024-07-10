-- https://vimcolorschemes.com/
-- https://dotfyle.com/neovim/colorscheme/trending
return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {
            transparent = false,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        },
    },
    {
        "nyoom-engineering/oxocarbon.nvim",
        lazy = true,
        config = function()
            -- vim.cmd("colorscheme oxocarbon")
        end,
    },
    {
        "navarasu/onedark.nvim",
        lazy = true,
        config = function()
            require("onedark").load()
            vim.cmd("colorscheme onedark")
        end,
        opts = {
            style = "deep",
        },
    },
}
