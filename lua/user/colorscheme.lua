-- colorscheme darkplus
-- tokyonight
vim.cmd [[
    try
        colorscheme onedark 
    catch /^Vim\%((\a\+)\)\=:E185/
      colorscheme default
      set background=dark
    endtry
]]
