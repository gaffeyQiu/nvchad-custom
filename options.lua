local opt = vim.opt

-- 缩进4个空格等于一个Tab
opt.shiftwidth = 4

local map = vim.api.nvim_set_keymap
local opt = {
  noremap = true,
  silent = true,
}
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)
