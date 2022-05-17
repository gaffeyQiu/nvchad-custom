local function termcodes(str)
   return vim.api.nvim_replace_termcodes(str, true, true, true)
end

-- 定义 toggleterm
local toggle = require "custom.plugins.toggleterm"
toggle.setup()

local M = {}

M.general = {

   i = {},

   n = {
      -- Windows split
      ["<leader>sv"] = { "<cmd> :vsp<CR>", "vertical windows" },
      ["<leader>sh"] = { "<cmd> :sp<CR>", "horizontal windows" },
      ["<leader>sc"] = { "<C-w>c", "close current windows" },
      ["<leader>so"] = { "<C-w>o", "close other windows" },
      -- windows size
      ["<C-Left>"] = { "<cmd> vertical resize +2<CR>", "vertical resize left" },
      ["<C-Right>"] = { "<cmd> vertical resize -2<CR>", "vertical resize right" },
      ["<C-Down>"] = { "<cmd> resize -2<CR>", "horizontal resize down" },
      ["<C-Up>"] = { "<cmd> resize +2<CR>", "horizontal resize up" },
      ["<C-=>"] = { "<C-w>=", "average windows" },
   },

   t = {
      -- Terminal Jump
      ["<C-h>"] = { termcodes "<C-\\><C-N><C-w>h", "   jump terminal left" },
      ["<C-j>"] = { termcodes "<C-\\><C-N><C-w>j", "   jump terminal down" },
      ["<C-k>"] = { termcodes "<C-\\><C-N><C-w>k", "   jump terminal up" },
      ["<C-l>"] = { termcodes "<C-\\><C-N><C-w>l", "   jump terminal right" },
      -- Terminal size
      ["<C-Left>"] = { "<cmd> vertical resize +2<CR>", "vertical resize left" },
      ["<C-Right>"] = { "<cmd> vertical resize -2<CR>", "vertical resize right" },
      ["<C-Down>"] = { "<cmd> resize -2<CR>", "horizontal resize down" },
      ["<C-Up>"] = { "<cmd> resize +2<CR>", "horizontal resize up" },
      ["<C-=>"] = { "<C-w>=", "average windows" },
   },
}

M.telescope = {
   n = {
      ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "find files" },
      ["<C-f>"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
   },
}

M.bufferline = {

   n = {
      -- cycle through buffers
      ["<A-h>"] = { "<cmd> BufferLineCyclePrev <CR>", "  cycle next buffer" },
      ["<A-l>"] = { "<cmd> BufferLineCycleNext <CR>", "  cycle prev buffer" },
   },
}

M.lspconfig = {
   n = {
      ["gh"] = {
         function()
            vim.lsp.buf.hover()
         end,
         "   lsp hover",
      },
      ["<leader>ra"] = {"<cmd> Lspsaga rename<CR>", " lsp rename"},
      ["<leader>ca"] = {"<cmd> Lspsaga code_action<CR>", " lsp code action"},

   },
}

M.toggleterm = {
   n = {
      ["<leader>tf"] = {
         function()
            require("custom.plugins.toggleterm").toggleF()
         end,
         "toggle float",
      },
      ["<leader>th"] = {
         function()
            toggle.toggleH()
         end,
         "toggle horizontal",
      },

      ["<leader>tv"] = {
         function()
            toggle.toggleV()
         end,
         "toggle vertical",
      },
      ["<leader>tg"] = {
         function()
            require("custom.plugins.toggleterm").toggleG()
         end,
         "toggle git",
      },
   },

   t = {
      ["<leader>tf"] = {
         function()
            require("custom.plugins.toggleterm").toggleF()
         end,
         "toggle float",
      },
      ["<leader>th"] = {
         function()
            toggle.toggleH()
         end,
         "toggle horizontal",
      },

      ["<leader>tv"] = {
         function()
            toggle.toggleV()
         end,
         "toggle vertical",
      },
      ["<leader>tg"] = {
         function()
            require("custom.plugins.toggleterm").toggleG()
         end,
         "toggle git",
      },
   },
}
return M
