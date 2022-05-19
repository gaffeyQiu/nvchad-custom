local function termcodes(str)
   return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local M = {}

-- M.disabled = {
--   n = {
--       ["<leader>h"] = "",
--       ["<C-s>"] = ""
--   }
-- }

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

      ["s"] = { "", "nop" },
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
      ["gc"] = {
         function()
            vim.lsp.buf.incoming_calls()
         end,
      },
      ["gi"] = {"<cmd> Trouble lsp_implementations", "lsp implementations"},
      ["gr"] = {"<cmd> Trouble lsp_references<CR>", "lsp references"},
      ["<leader>rn"] = { "<cmd> Lspsaga rename<CR>", " lsp rename" },
      ["<leader>ca"] = { "<cmd> Lspsaga code_action<CR>", " lsp code action" },
      ["<leader>cs"] = {"<cmd> SymbolsOutline<CR>", " code symbols outline"},
   },
}

M.comment = {

   -- toggle comment in both modes
   n = {
      ["<C-_>"] = {
         function()
            require("Comment.api").toggle_current_linewise()
         end,

         "蘒  toggle comment",
      },
   },

   v = {
      ["<C-_>"] = {
         "<ESC><cmd>lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>",
         "蘒  toggle comment",
      },
   },
}

M.trouble = {
   n = {
      ["<leader>tr"] = { "<cmd> TroubleToggle<CR>", " toggle trouble" },
   },
}

M.hop = {
   n = {
      ["f"] = {
         "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>",
         "find char",
      },
      ["F"] = {
         "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>",
         "find char",
      },
   },
}

M.go = {
   n = {
      ["sf"] = { "<cmd> GoFillStruct<CR>", "auto fill struct" },
      ["se"] = { "<cmd> GoIfErr<CR>", "auto fill if err != nil" },
   },
}

return M
