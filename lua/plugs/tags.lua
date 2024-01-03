return {
    {
        'preservim/tagbar',
        lazy = true,
        cmd = { 'TagbarToggle' },
        keys = { { '<F4>', '<cmd>TagbarToggle<CR>', '' } },
        config = function() vim.g.tagbar_autofocus = 1 end,
    },

}
