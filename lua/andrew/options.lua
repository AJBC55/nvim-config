-- allow numbers in the file
vim.o.number = true
vim.o.relativenumber = true

-- netrw config
vim.g.netrw_liststyle = 3

-- set the tabing for neo vim
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.wrap = false

-- hello
-- looks
vim.o.termguicolors = true
vim.o.signcolumn = "yes"

-- backspace
vim.o.backspace = "indent,eol,start"

-- clipboard
vim.o.clipboard = "unnamedplus"

-- split
vim.o.splitright = true

-- fix for the rust error

vim.lsp.handlers["window/showMessage"] = function(_, result, ctx)
	if result.type == vim.lsp.protocol.MessageType.Error and result.message:match("server cancelled the request") then
		return
	end
	vim.lsp.handlers["window/showMessageDefault"](_, result, ctx)
end
