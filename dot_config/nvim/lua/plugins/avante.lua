-- avante.nvim (enabled with the LazyVim extra "ai.avante")
-- Drives gemini-cli through ACP, with the gemini-cli Google login
-- ("oauth-personal") and the project set in GOOGLE_CLOUD_PROJECT (.zshrc).
-- Log in once by running `gemini` in a terminal.
return {
  {
    "yetone/avante.nvim",
    opts = {
      provider = "gemini-cli",
      acp_providers = {
        ["gemini-cli"] = {
          args = { "--acp" },
          auth_method = "oauth-personal",
          env = {
            GOOGLE_CLOUD_PROJECT = os.getenv("GOOGLE_CLOUD_PROJECT"),
          },
        },
      },
    },
  },
}
