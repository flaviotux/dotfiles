-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.colorscheme = "catppuccin-macchiato"
lvim.builtin.lualine.style = "default"
lvim.format_on_save.enabled = true
lvim.transparent_window = true

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    name = "prettier",
    filetypes = {
      "typescript",
      "typescriptreact",
      "javascript",
      "javascriptreact"
    },
  },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    name = "eslint",
    filetypes = {
      "typescript",
      "typescriptreact",
      "javascript",
      "javascriptreact"
    }
  },
  {
    name = "shellcheck",
    args = { "--severity", "warning" },
  },
}

lvim.plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}
