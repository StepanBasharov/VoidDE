return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            style = "night",
            transparent = true,
            terminal_colors = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
            on_highlights = function(hl, c)
                hl.BufferLineFill = { bg = "NONE" }
                hl.BufferLineBackground = { bg = "NONE" }
                hl.BufferLineBufferVisible = { bg = "NONE" }
                hl.BufferLineBufferSelected = { 
                    fg = c.blue,
                    bg = "NONE",
                    bold = true,
                    italic = false,
                }
                hl.BufferLineTab = { bg = "NONE" }
                hl.BufferLineTabSelected = { fg = c.blue, bg = "NONE" }
            end,
        })
        vim.cmd.colorscheme("tokyonight")
    end,
}


