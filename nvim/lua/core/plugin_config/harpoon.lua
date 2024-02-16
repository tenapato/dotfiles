require("harpoon").setup({
    menu = {
        width = vim.api.nvim_win_get_width(0) - 4 
    },
    global_settings = {
        -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
        save_on_toggle = false,

        -- saves the harpoon file upon every change. disabling is unrecommended.
        save_on_change = true,

        -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
        enter_on_sendcmd = false,

        -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
        tmux_autoclose_windows = false,

        -- filetypes that you want to prevent from adding to the harpoon list menu.
        excluded_filetypes = { "harpoon" },

        -- set marks specific to each git branch inside git repository
        mark_branch = false,

        -- enable tabline with harpoon marks
        tabline = false,
        tabline_prefix = "   ",
        tabline_suffix = "   ",
    }

})

vim.keymap.set("n", "<leader>hv", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>hm", ":lua require('harpoon.mark').add_file()<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>hf", ":lua require('harpoon.ui').nav_file()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>hf", ":lua require('harpoon.ui').nav_next()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>hb", ":lua require('harpoon.ui').nav_prev()<CR>", { noremap = true, silent = true })
