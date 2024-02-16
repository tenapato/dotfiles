require('telescope').setup({
    pickers = {
		find_files = {
			-- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
            hidden = true,
			find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
		},
	},
})
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<c-p>', builtin.find_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
vim.keymap.set('n', '<Space>sh', builtin.search_history, {})
