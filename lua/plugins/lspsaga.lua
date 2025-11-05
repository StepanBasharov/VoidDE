return {
    {
        "nvimdev/lspsaga.nvim",
        event = "LspAttach",
        config = function()
            require("lspsaga").setup({
                ui = { border = "rounded" },
                symbol_in_winbar = { enable = true },
                lightbulb = {
                    enable = true,
                    sign = true,
                    debounce = 10,
                },
            })
        end,
    },
}

