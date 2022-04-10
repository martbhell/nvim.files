local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.g.nvim_tree_auto_ignore_ft = {'startify'}
vim.g.nvim_tree_add_trailing = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_show_icons = vim.api.nvim_eval('{"git": 0, "folders": 1, "files": 1}')

require'nvim-tree'.setup{
    hijack_cursor = true,
    open_on_setup = true,
    renderer ={indent_markers = {enable = true}},

    mappings = {
        list = {
      -- { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
      -- { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
      -- { key = "<C-v>",                        cb = tree_cb("vsplit") },
      -- { key = "<C-x>",                        cb = tree_cb("split") },
      -- { key = "<C-t>",                        cb = tree_cb("tabnew") },
      -- { key = "<",                            cb = tree_cb("prev_sibling") },
      -- { key = ">",                            cb = tree_cb("next_sibling") },
      -- { key = "P",                            cb = tree_cb("parent_node") },
      -- { key = "<BS>",                         cb = tree_cb("close_node") },
      -- { key = "<S-CR>",                       cb = tree_cb("close_node") },
      -- { key = "<Tab>",                        cb = tree_cb("preview") },
      -- { key = "K",                            cb = tree_cb("first_sibling") },
      -- { key = "J",                            cb = tree_cb("last_sibling") },
      -- { key = "I",                            cb = tree_cb("toggle_ignored") },
      -- { key = "H",                            cb = tree_cb("toggle_dotfiles") },
      -- { key = "R",                            cb = tree_cb("refresh") },
      -- { key = "a",                            cb = tree_cb("create") },
      -- { key = "d",                            cb = tree_cb("remove") },
      -- { key = "r",                            cb = tree_cb("rename") },
      -- { key = "<C-r>",                        cb = tree_cb("full_rename") },
      -- { key = "x",                            cb = tree_cb("cut") },
      -- { key = "c",                            cb = tree_cb("copy") },
      -- { key = "p",                            cb = tree_cb("paste") },
      -- { key = "y",                            cb = tree_cb("copy_name") },
      -- { key = "Y",                            cb = tree_cb("copy_path") },
      -- { key = "gy",                           cb = tree_cb("copy_absolute_path") },
      -- { key = "[c",                           cb = tree_cb("prev_git_item") },
      -- { key = "]c",                           cb = tree_cb("next_git_item") },
      -- { key = "-",                            cb = tree_cb("dir_up") },
      -- { key = "q",                            cb = tree_cb("close") },
      -- { key = "g?",                           cb = tree_cb("toggle_help") },
          { key = "<C-[>",                        cb = tree_cb("dir_up") },
          { key = "h",                            cb = tree_cb("close_node") },
          { key = "l",                            cb = tree_cb("edit") },
    }

    }
}

-- autoclose nvim tree when last file
vim.cmd[[autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif]]