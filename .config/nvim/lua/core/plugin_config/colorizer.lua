vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
	pattern = "*.*",
	command = ":ColorHighlight"
})
