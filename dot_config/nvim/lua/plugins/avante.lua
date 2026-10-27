-- avante.nvim (enabled with the LazyVim extra "ai.avante")
-- Uses the Claude Pro/Max subscription: the first start opens a browser login,
-- then paste the code shown into Neovim (or run `:AvanteSwitchProvider claude`).
return {
  {
    "yetone/avante.nvim",
    opts = {
      provider = "claude",
      providers = {
        claude = {
          auth_type = "max",
        },
      },
    },
  },
}
