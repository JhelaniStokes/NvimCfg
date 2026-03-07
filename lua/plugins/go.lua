return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              analyses = {
                unusedparams = true,
                nilness = true,
              },
              staticcheck = true,
            },
          },
        },
      },
    },
  },
}
