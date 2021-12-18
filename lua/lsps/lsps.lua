-- remove diagnostic signs and only color numbers
vim.fn.sign_define("DiagnosticSignError", {text = "", numhl = "DiagnosticDefaultError"})
vim.fn.sign_define("DiagnosticSignWarn", {text = "", numhl = "DiagnosticDefaultWarn"})
vim.fn.sign_define("DiagnosticSignInfo", {text = "", numhl = "DiagnosticDefaultInfo"})
vim.fn.sign_define("DiagnosticSignHint", {text = "", numhl = "DiagnosticDefaultHint"})

-- Setup lspconfig for cmp
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lsp_signature'.setup()

-- pip install 'python-lsp-server[all]'
require'lspconfig'.pylsp.setup{
    settings = {
        pyls = {
            plugins = {
                pylint = {enabled = true; }
            }
        }
    },
    capabilities = capabilities
}


-- go install golang.org/x/tools/gopls@latest
-- needs a .git to be attached
-- root_dir = root_pattern("go.mod", ".git")
require'lspconfig'.gopls.setup{
    settings = {
        gopls = {
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
      },
    },
    capabilities = capabilities
}

-- sudo npm install -g vim-language-server
require'lspconfig'.vimls.setup{capabilities = capabilities}

-- require other files lsp config folder
require('lsps/lua-sumneko')
