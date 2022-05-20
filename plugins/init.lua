return {
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.null-ls").setup()
      end,
   },

   ["akinsho/toggleterm.nvim"] = {
     tag = 'v1.*',
      config = function()
        require("custom.plugins.toggleterm")
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

   -- debugger
   ["rcarriga/nvim-dap-ui"] = {},
   ["theHamsta/nvim-dap-virtual-text"] = {},

   ["mfussenegger/nvim-dap"] = {
      config = function()
         require("custom.plugins.dap.dap-config")
      end,
   },

   ["simrat39/symbols-outline.nvim"] = {},

   ["Pocco81/AutoSave.nvim"] = {
       config = function ()
        require("custom.plugins.autosave")
       end
   }
}
