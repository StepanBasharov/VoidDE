return {
        "ray-x/go.nvim",
        dependencies = {
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        opts = {
            lsp_cfg = false,
            lsp_keymaps = false,
            lsp_inlay_hints = { enable = false },
        },
        config = function(lp, opts)
            require("go").setup(opts)
            local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
            vim.api.nvim_create_autocmd("BufWritePre", {
                pattern = "*.go",
                callback = function()
                    require('go.format').goimports()
                end,
                group = format_sync_grp,
            })
            
            local autopairs_grp = vim.api.nvim_create_augroup("GoAutoPairs", {})
            vim.api.nvim_create_autocmd("FileType", {
                pattern = "go",
                callback = function()
                    vim.keymap.set("i", ",", function()
                        local line = vim.api.nvim_get_current_line()
                        local col = vim.api.nvim_win_get_cursor(0)[2]
                        local before = line:sub(1, col)
                        local after = line:sub(col + 1)
                        
                        if before:match("func%s+[%w_]*%s*%(.-%)%s+[%w%[%]%*%.]+$") or 
                           before:match("func%s+%(.-%)%s+[%w_]+%s*%(.-%)%s+[%w%[%]%*%.]+$") then
                            local type_match = before:match("([%w%[%]%*%.]+)$")
                            if type_match and not after:match("^%s*%(") then
                                vim.schedule(function()
                                    local row = vim.api.nvim_win_get_cursor(0)[1]
                                    local start_pos = col - #type_match
                                    local new_line = line:sub(1, start_pos) .. "(" .. type_match .. ", )" .. after
                                    vim.api.nvim_set_current_line(new_line)
                                    vim.api.nvim_win_set_cursor(0, {row, col + 2})
                                end)
                                return
                            end
                        end
                        
                        vim.api.nvim_feedkeys(",", "n", false)
                    end, { buffer = true, noremap = true })
                end,
                group = autopairs_grp,
            })
        end,
        event = { "CmdlineEnter" },
        ft = { "go", 'gomod' },
        build = ':lua require("go.install").update_all_sync()'
    }
     
