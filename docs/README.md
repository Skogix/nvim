# Lazy keymaps:
    [1]: (string) lhs (required)
    [2]: (string|fun()) rhs (optional)
    mode: (string|string[]) mode (optional, defaults to "n")
    ft: (string|string[]) filetype for buffer-local keymaps (optional)
    any other option valid for vim.keymap.set
## example
      { "<leader>ft", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
