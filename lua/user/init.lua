local keymap_opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-s>', ':w<cr>', keymap_opts)
vim.keymap.set('n', '<leader>k', ':bnext<CR>', keymap_opts)
vim.keymap.set('n', '<leader>j', ':bprevious<CR>', keymap_opts)
vim.keymap.set('n', '<leader>l', ':tabbnext<CR>', keymap_opts)
vim.keymap.set('n', '<leader>h', ':tabbprevious<CR>', keymap_opts)
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', keymap_opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', keymap_opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', keymap_opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', keymap_opts)

vim.keymap.set('v', '<leader>y', '"+y', keymap_opts)
vim.keymap.set('n', '<leader>Y', '"+g_', keymap_opts)
vim.keymap.set('n', '<leader>y', '"+y', keymap_opts)
vim.keymap.set('n', '<leader>yy', '"+yy', keymap_opts)

vim.keymap.set('n', '<leader>p', '"+p', keymap_opts)
vim.keymap.set('n', '<leader>P', '"+P', keymap_opts)
vim.keymap.set('v', '<leader>p', '"+p', keymap_opts)
vim.keymap.set('v', '<leader>p', '"+P', keymap_opts)

vim.opt.clipboard:append("unnamedplus")

require'lspconfig'.jsonls.setup {
    commands = {
        Format = {
            function()
                vim.lsp.buf.format(nil, 1000)
            end,
            description = "Format current buffer with LSP"
        }
    }
}
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.format(nil, 1000)<CR>', { noremap = true, silent = true })


-- local dap = require'dap'
--
-- dap.adapters.node2 = {
--     type = 'executable',
--     command = 'node',
--     args = { '~/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js' }
-- }
-- dap.configurations.javascript = {
--   {
--     name = 'Launch',
--     type = 'node2',
--     request = 'launch',
--     program = '${file}',
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = 'inspector',
--     console = 'integratedTerminal',
--   },
--   {
--     -- For this to work you need to make sure the node process is started with the `--inspect` flag.
--     name = 'Attach to process',
--     type = 'node2',
--     request = 'attach',
--     processId = require'dap.utils'.pick_process,
--   },
-- }
