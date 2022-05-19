-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.
-- when nvim-tree create file edit new file
require("nvim-tree.events").on_file_created(function(file)
   vim.cmd("edit " .. file.fname)
end)

-- local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", {
--   clear = true,
-- })
--
-- local autocmd = vim.api.nvim_create_autocmd
--
-- autocmd("TermOpen", {
--   group = myAutoGroup,
--   command = "startinsert",
-- })
