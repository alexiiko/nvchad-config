local plugins = {
  {
    -- plugin for downloading packages via code 
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- add the packages you want installed in this table
        "typescript-language-server",
        "pyright",
        "svelte-language-server",
        "css-lsp",
        "html-lsp",
      },
    },
  },
  {
    -- plugin for lsp integration
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    -- plugin for syntax highlighting
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {"svelte", "typescript", "css"} -- here add any filetype you want to have syntax highlighting in
    }
  }
}

return plugins
