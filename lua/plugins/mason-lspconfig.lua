return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "emmet_ls",
      "gopls",
      "pyright",
      "eslint",
      "html",
      "cssls",
      "tailwindcss"
    }
  },
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      {
        "mason-org/mason.nvim",
        opts = {}
      }
    }
  }
}
