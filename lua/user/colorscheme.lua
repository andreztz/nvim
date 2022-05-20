-- colorscheme darkplus
-- tokyonight
vim.cmd [[
    try
        colorscheme murphy 
    catch /^Vim\%((\a\+)\)\=:E185/
      colorscheme default
      set background=dark
    endtry
]]
