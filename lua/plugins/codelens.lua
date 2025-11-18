return {
    {
        "VidocqH/lsp-lens.nvim",
        event = "LspAttach",
        config = function()
            require("lsp-lens").setup({
                enable = true,
                include_declaration = true,
                sections = {
                    definition = function(count)
                        return "Definitions: " .. count
                    end,
                    references = function(count)
                        return "References: " .. count
                    end,
                    implements = function(count)
                        return "Implements: " .. count
                    end,
                    git_authors = false,
                },
                ignore_filetype = {
                    "prisma",
                },
            })
        end,
    },
}

