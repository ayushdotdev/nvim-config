vim.g.mapleader = " "

vim.keymap.set('n', 'gj', 'j')
vim.keymap.set('n', 'gk', 'k')

vim.keymap.set('n', '<leader>y', 'y', { desc = "copy to system clipboard" })
vim.keymap.set('n', '<leader>p', 'p', { desc = "paste from system clipboard" })

vim.keymap.set('n', '<leader>e', vim.cmd.Ex, { desc = "Open file explorer" })
