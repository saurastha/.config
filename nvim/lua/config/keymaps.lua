vim.keymap.set("n", "<Leader>e", "<cmd>Oil<CR>", {desc="Open file explorer using Oil plugin"})
vim.keymap.set("n", "gl", function()
    vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })
