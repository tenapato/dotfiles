require("mason").setup()
require("mason-lspconfig").setup({
  -- lua_ls - Lua
  -- tsserver - Typescript
  -- pyright - Python
  -- taplo - TOML
  -- jsonls - JSON
  -- clangd - C++
  ensure_installed = { "lua_ls", "tsserver" , "pyright" , "taplo", "jsonls", "clangd"}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspsaga').setup({
  code_action_icon = "💡",
  symbol_in_winbar = {
    in_custom = false,
    enable = true,
    separator = ' ',
    show_file = true,
    file_formatter = ""
  },
  rename = {
        in_select = true,
        auto_save = false,
        whole_project = false,
        --project_max_width = 0.5,
        --project_max_height = 0.5,
        keys = {
            quit = '<C-c>',
            exec = '<CR>',
            select = 'x',
        },
    },
})


vim.keymap.set("n", "gd", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<cr>', { silent = true })
vim.keymap.set({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { silent = true })
vim.keymap.set("n", "gr", require('telescope.builtin').lsp_references, {})

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
    },
  }
}

require'lspconfig'.pyright.setup {}

require("lspconfig").tsserver.setup{
  --on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript" },
  cmd = {"typescript-language-server", "--stdio"},
}
