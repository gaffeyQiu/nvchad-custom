return {
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.null-ls").setup()
      end,
   },

   ["akinsho/toggleterm.nvim"] = {
      config = function()
         require("custom.plugins.toggleterm").setup()
      end,
   },

   ["tami5/lspsaga.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.lspsaga").setup()
      end,
   },

   ["folke/trouble.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.trouble").setup()
      end,
   },

   ["michaelb/sniprun"] = {
      run = "bash ./install.sh",
   },

   -- 缩进指示线
   ["lukas-reineke/indent-blankline.nvim"] = {
      config = function()
         require("custom.plugins.indent-blankline").setup()
      end,
   },

   -- 快速跳转
   ["phaazon/hop.nvim"] = {
      branch = "v1",
      config = function()
         require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
      end,
   },
   -- golang plugins
   ["ray-x/go.nvim"] = {
      config = function()
         require("go").setup()
      end,
   },
}
