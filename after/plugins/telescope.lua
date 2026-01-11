local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-f>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-g>', builtin.live_grep, { desc = 'Telescope live grep' })
