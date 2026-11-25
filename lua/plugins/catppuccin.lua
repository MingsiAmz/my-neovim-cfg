return{
    "catppuccin/nvim",
    opts = {
        flavour = "latte",
    },
    config = function(_, opts)
        require("catppuccin").setup(opts)
        vim.cmd("colorscheme catppuccin")
    end
}
