---@diagnostic disable: missing-parameter
-- local status, toggleterm = pcall(require, "toggleterm")
-- if not status then
--    vim.notify "没有找到 toggleterm"
--    return
-- end
--
-- local Terminal = require("toggleterm.terminal").Terminal
--
-- local lazygit = Terminal:new {
--    cmd = "lazygit",
--    dir = "git_dir",
--    direction = "float",
--    float_opts = {
--       border = "double",
--    },
--    on_open = function(term)
--       vim.cmd "startinsert!"
--       -- q / <leader>tg 关闭 terminal
--       vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
--       vim.api.nvim_buf_set_keymap(term.bufnr, "n", "<leader>tg", "<cmd>close<CR>", { noremap = true, silent = true })
--       -- ESC 键取消，留给lazygit
--       if vim.fn.mapcheck("<Esc>", "t") ~= "" then
--          vim.api.nvim_del_keymap("t", "<Esc>")
--       end
--    end,
--    on_close = function(_)
--       -- 添加回来
--       vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {
--          noremap = true,
--          silent = true,
--       })
--    end,
-- }
--
-- local tf = Terminal:new {
--    direction = "float",
--    close_on_exit = true,
-- }
--
-- local tv = Terminal:new {
--    direction = "vertical",
--    close_on_exit = true,
-- }
--
-- local th = Terminal:new {
--    direction = "horizontal",
--    close_on_exit = true,
-- }
--
-- local M = {}
--
-- M.setup = function()
--    toggleterm.setup {
--       size = function(term)
--          if term.direction == "horizontal" then
--             return 15
--          elseif term.direction == "vertical" then
--             return vim.o.columns * 0.4
--          end
--       end,
--    }
-- end
--
-- M.toggleF = function()
--    if tf:is_open() then
--       tf:close()
--       return
--    end
--    tv:close()
--    th:close()
--    tf:open()
-- end
--
-- M.toggleV = function()
--    if tv:is_open() then
--       tv:close()
--       return
--    end
--    tf:close()
--    th:close()
--    tv:open()
-- end
--
-- M.toggleH = function()
--    if th:is_open() then
--       th:close()
--       return
--    end
--    tf:close()
--    tv:close()
--    th:open()
-- end
--
-- M.toggleG = function()
--    lazygit:toggle()
-- end
--
-- return M
--
--
local status, toggleterm = pcall(require, "toggleterm")
if not status then
  vim.notify("没有找到 toggleterm")
  return
end


toggleterm.setup({
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  start_in_insert = true,
})


local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  dir = "git_dir",
  direction = "float",
  float_opts = {
    border = "double",
  },
  on_open = function(term)
    vim.cmd("startinsert!")
    -- q / <leader>tg 关闭 terminal
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "<leader>tg", "<cmd>close<CR>", { noremap = true, silent = true })
    -- ESC 键取消，留给lazygit
    if vim.fn.mapcheck("<Esc>", "t") ~= "" then
      vim.api.nvim_del_keymap("t", "<Esc>")
    end
  end,
  on_close = function(_)
    -- 添加回来
    vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {
      noremap = true,
      silent = true,
    })
  end,
})

local ta = Terminal:new({
  direction = "float",
  close_on_exit = true,
})

local tb = Terminal:new({
  direction = "vertical",
  close_on_exit = true,
})

local tc = Terminal:new({
  direction = "horizontal",
  close_on_exit = true,
})

function _toggleA()
  if ta:is_open() then
    ta:close()
    return
  end
  tb:close()
  tc:close()
  ta:open()
end

function _toggleB()
  if tb:is_open() then
    tb:close()
    return
  end
  ta:close()
  tc:close()
  tb:open()
end

function _toggleC()
  if tc:is_open() then
    tc:close()
    return
  end
  ta:close()
  tb:close()
  tc:open()
end

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>tg", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>tf", "<cmd>lua _toggleA()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>tv", "<cmd>lua _toggleB()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>th", "<cmd>lua _toggleC()<CR>", {noremap = true, silent = true})
