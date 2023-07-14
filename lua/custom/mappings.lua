local M = {}

M.general = {
  n ={
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left"},
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right"},
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window right"},
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window right"}
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

M.vim_test = {
  n = {
    ["<leader>tt"] = {":TestNearest<cr>", "Test This"},
    ["<leader>tf"] = { ":TestFile<cr>", "Test File" },
    ["<leader>tl"] = { ":TestLast<cr>", "Run Previous Test" },
    ["<leader>te"] = { ":T exit<cr>", "Close Terminal" },
    ["<leader>ta"] = { ":TestSuite<cr>", "Test All" }
  }
}

return M
