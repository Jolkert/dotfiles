require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls" }
})

local on_attach = function(_, bufnr)
	vim.keymap.set('n', "<leader>rn", vim.lsp.buf.rename, {desc = "Rename symbol"})
	vim.keymap.set('n', "<leader>ca", vim.lsp.buf.code_action, {desc = "Code action"})

	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {desc = "Goto definition"})
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {desc = "Goto iplementation"})
	vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {desc = "References"})
	vim.keymap.set('n', 'K', vim.lsp.buf.hvoer, {desc = "Hover"})
end

require("lspconfig").lua_ls.setup {
	on_attach = on_attach
}
