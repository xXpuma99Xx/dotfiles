---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "window left", opts = { silent = true, noremap = true } },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "window right", opts = { silent = true, noremap = true } },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "window down", opts = { silent = true, noremap = true } },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp <CR>", "window up", opts = { silent = true, noremap = true } },
    ["<leader>q"] = { "<cmd> :q <CR>", "Salir" },
  },
  i = {
    ["<C-s>"] = { "<cmd> w <CR>", "save file" },
  },
}

-- more keybinds!

M.code_runner = {
  n = {
    ["<leader>R"] = { "<cmd> RunCode <CR>", "build and run" },
  },
  i = {
    ["<C-R>"] = { "<cmd> RunCode <CR>", "build and run" },
  },
}

M.nvimtree = {
  n = {
    -- open vertical split
    ["<leader>|"] = {
      function()
        require("nvim-tree.api").node.open.vertical()
      end,
      "open vertical",
    },

    -- open horizontal split
    ["<leader>-"] = {
      function()
        require("nvim-tree.api").node.open.horizontal()
      end,
      "open horizontal",
    },
  },
}

M.barbar = {
  n = {
    ["<leader>w"] = { "<Cmd> BufferClose <CR>", "close buffer", { silent = true, noremap = true } },
    ["<leader>1"] = { "<Cmd> BufferGoto 1 <CR>", "buffer 1", { silent = true, noremap = true } },
    ["<leader>2"] = { "<Cmd> BufferGoto 2 <CR>", "buffer 2", { silent = true, noremap = true } },
    ["<leader>3"] = { "<Cmd> BufferGoto 3 <CR>", "buffer 3", { silent = true, noremap = true } },
    ["<leader>4"] = { "<Cmd> BufferGoto 4 <CR>", "buffer 4", { silent = true, noremap = true } },
    ["<leader>5"] = { "<Cmd> BufferGoto 5 <CR>", "buffer 5", { silent = true, noremap = true } },
    ["<leader>6"] = { "<Cmd> BufferGoto 6 <CR>", "buffer 6", { silent = true, noremap = true } },
    ["<leader>7"] = { "<Cmd> BufferGoto 7 <CR>", "buffer 7", { silent = true, noremap = true } },
    ["<leader>8"] = { "<Cmd> BufferGoto 8 <CR>", "buffer 8", { silent = true, noremap = true } },
    ["<leader>9"] = { "<Cmd> BufferGoto 9 <CR>", "buffer 9", { silent = true, noremap = true } },
    ["<leader>0"] = { "<Cmd> BufferLast <CR>", "last buffer", { silent = true, noremap = true } },
  },
}

M.whichkey = {
  n = {
    ["<leader>wK"] = { "", "" },
    ["<leader>wk"] = { "", "" },
    ["<leader>WK"] = {
      function()
        vim.cmd "WhichKey"
      end,
      "which-key all keymaps",
      opts = {},
    },
    ["<leader>Wk"] = {
      function()
        local input = vim.fn.input "WhichKey: "
        vim.cmd("WhichKey " .. input)
      end,
      "which-key query lookup",
    },
  },
}

M["git-conflict"] = {
  n = {
    ["<leader>gco"] = { "<Plug>(git-conflict-ours)", "current change" },
    ["<leader>gct"] = { "<Plug>(git-conflict-theirs)", "incoming change" },
    ["<leader>gcb"] = { "<Plug>(git-conflict-both)", "both changes" },
    ["<leader>gc0"] = { "<Plug>(git-conflict-none)", "neither change" },
    ["<leader>gcp"] = { "<Plug>(git-conflict-prev-conflict)", "next conflict" },
    ["<leader>gcn"] = { "<Plug>(git-conflict-next-conflict)", "previous conflict" },
  },
}

return M
