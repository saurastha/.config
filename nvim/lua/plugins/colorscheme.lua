return {
    "vague-theme/vague.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("vague").setup({
            transparent = true,
        })
        vim.cmd.colorscheme("vague")
        vim.api.nvim_set_hl(0, "LazyNormal", { bg = "#141415" })
    end,
}
