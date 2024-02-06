--highlight gray
--highlight gray guifg=#5c6370
vim.cmd[[highlight CopilotSuggestion ctermfg=8 guifg=white guibg=#5c6370]]


vim.api.nvim_set_keymap('n', '<leader>Cp', ':Copilot panel<CR>', { noremap = true, silent = true })

