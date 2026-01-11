return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      -- Install parsers
      require("nvim-treesitter").install({
        "rust",
        "go",
        "javascript",
        "html",
        "lua",
        "css",
        "python",
        "typescript",
      })

      -- Tree-sitter folds + indent (per buffer)
      vim.api.nvim_create_autocmd("FileType", {
        callback = function()
          -- Folding
          vim.wo.foldmethod = "expr"
          vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
          vim.wo.foldlevel = 99

          -- Indentation
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
}
