-- set the leader key
vim.g.mapleader = " "
-- remap for saving a file
vim.keymap.set("n", "<leader>s", vim.cmd.w)
-- remap quitinqf
vim.keymap.set("n", "<leader>q", vim.cmd.wq)
-- go into the file finder
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)
-- chage entering insert mode to use ff
vim.keymap.set("i", "jj", "<Esc>")
