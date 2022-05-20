-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/MAIN.md
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
		formatting.black.with({ extra_args = { "--fast" } }),
        -- Obs: Stylua apresentando erro table expected, got string
        -- https://github.com/jose-elias-alvarez/null-ls.nvim/issues/843
        -- https://github.com/jose-elias-alvarez/null-ls.nvim/issues/838
        -- Segundo os links acima
		formatting.stylua, --https://github.com/johnnymorganz/stylua
    -- diagnostics.flake8
	},
})
