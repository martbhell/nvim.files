
-- source plugin configs
require('plugins.compe')
require('plugins.nvimtree')
require('plugins.git')

-- setup and configure minor plugins
-- treesitter config
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true
  },
  rainbow = {enable = true}
}

-- plugin mappings
local key_opts = {silent=true, noremap=true}

vim.api.nvim_set_keymap('n', '<F2>', ':NvimTreeToggle<CR>', key_opts)
vim.api.nvim_set_keymap('', '<f4>', ':Tagbar<CR>', key_opts)
vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeToggle<CR>', key_opts)

-- plugin settings

