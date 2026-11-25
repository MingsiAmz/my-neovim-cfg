return{
    "williamboman/mason.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        "williamboman/mason-lspconfig",
    },

    opts = {},
    
    config = function (_, opts)
        require("mason").setup(opts)
        local registry = require("mason-registry")
        
        local function setup(name, config)
            local success, package = pcall(registry.get_package, name)
            if success and not package:is_installed() then
                package:install()
            end
            
            local nvim_lsp = require("mason-lspconfig.mappings").get_mason_map().package_to_lspconfig[name]
            if not nvim_lsp then
                vim.notify("No lspconfig mapping for " .. name, vim.log.levels.WARN)
                return
            end
            config.capabilities = require("blink.cmp").get_lsp_capabilities()
            vim.lsp.config(nvim_lsp, config)
            vim.lsp.enable(nvim_lsp)
        end

        local servers = {
            ["lua-language-server"] = {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {"vim"}
                        }
                    }
                }
            },
            pyright = {},
            ["html-lsp"] = {},
            ["css-lsp"] = {},
            ["typescript-language-server"] = {},
            ["emmet-ls"] = {},
            ["jdtls"] = {},
        }

        for server, config in pairs(servers) do
            setup(server, config)
        end

        vim.diagnostic.config({
            virtual_text = true,
            update_in_insert = true,
        })
    end
}
