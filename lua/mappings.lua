
local function map(mode, key, cmd)
    vim.api.nvim_set_keymap(mode, key, cmd, { noremap = true, silent = true })
end


map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>sb', '<cmd>Telescope buffers<cr>')
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
map('n', '<leader>cc', '<cmd>NvimTreeToggle<cr>')
map('n', '<leader>gd', '<cmd>Telescope lsp_definitions<cr>')
map('n', '<leader>gi', '<cmd>Telescope lsp_implementations<cr>')
map('n', '<leader>fr', '<cmd>Telescope lsp_references<cr>')
map('n', '<leader>fb', '<cmd>Telescope file_browser<cr>')
