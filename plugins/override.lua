-- overriding default plugin configs!

local M = {}

M.treesitter = {
   ensure_installed = {
      "vim",
      "html",
      "css",
      "javascript",
      "json",
      "toml",
      "markdown",
      "c",
      "bash",
      "lua",
      "go",
   },
}

M.bufferline = {
  separator_style = "slant",
}

M.nvimtree = {
   git = {
      enable = true,
   },
}

return M
