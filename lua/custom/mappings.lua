---@type ChadrcMappings
local M = {}

-- In order to disable a default keymap, use

--[[M.disabled = {
  n = {
      ["<leader>h"] = "",
      ["<C-a>"] = ""
  }
}]]

-- Your custom mappings
M.abc = {
  n = {
    ["<A-Left>"] = { "<C-w>h", "Window left" },
    ["<A-Right>"] = { "<C-w>l", "Window right" },
    ["<A-Down>"] = { "<C-w>j", "Window down" },
    ["<A-Up>"] = { "<C-w>k", "Window up" },
    ["<F2>"] = {
      function()
        vim.lsp.buf.references()
      end,
      "LSP references",
    },
    ["<F4>"] = { ":cclose<CR>", "close quickfix window"},
    ["<leader>d"] = {":Neotree document_symbols<CR>", "change Neotree to tagList"},
    ["<leader>b"] = {":Neotree buffers<CR>", "change Neotree to buffers"},
    ["<leader>n"] = {":Neotree filesystem toggle<CR>", "change Neotree to file_system"},
    ["<leader>fg"] = {":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>"},
  },
}

return M

