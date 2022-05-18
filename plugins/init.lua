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
     run = "bash ./install.sh"
   }
}
