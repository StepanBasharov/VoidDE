return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            local lsp_utils = require("utils.lsp")

            lsp_utils.setup_duplicate_protection()

            local capabilities = lsp_utils.get_capabilities()
            local on_attach = lsp_utils.on_attach

            vim.lsp.config("gopls", {
                cmd = { "gopls" },
                filetypes = { "go", "gomod", "gowork", "gotmpl" },
                root_markers = { "go.work", "go.mod", ".git" },
                capabilities = capabilities,
                on_attach = on_attach,
                settings = {
                    gopls = {
                        analyses = { unusedparams = true, shadow = true },
                        staticcheck = true,
                        gofumpt = true,
                    },
                },
            })

            vim.lsp.config("pyright", {
                cmd = { "pyright-langserver", "--stdio" },
                filetypes = { "python" },
                root_markers = { "pyproject.toml", "setup.py", "requirements.txt", ".git" },
                capabilities = capabilities,
                on_attach = on_attach,
                settings = {
                    python = {
                        analysis = {
                            autoImportCompletions = true,
                            typeCheckingMode = "basic",
                            useLibraryCodeForTypes = true,
                        },
                    },
                },
            })

            vim.lsp.config("ruff", {
                cmd = { "ruff", "server" },
                filetypes = { "python" },
                root_markers = { "pyproject.toml", "ruff.toml", ".git" },
                capabilities = capabilities,
                on_attach = function(client, bufnr)
                    on_attach(client, bufnr)
                    client.server_capabilities.documentFormattingProvider = false
                end,
            })

            vim.lsp.enable({ "gopls", "pyright", "ruff" })
        end,
    },
}

