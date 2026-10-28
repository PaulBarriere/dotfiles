-- avante.nvim (enabled with the LazyVim extra "ai.avante")
-- Drives gemini-cli through ACP, with the gemini-cli Google login
-- ("oauth-personal") and the project set in GOOGLE_CLOUD_PROJECT (.zshrc).
-- Log in once by running `gemini` in a terminal.
return {
  {
    "yetone/avante.nvim",
    -- The LazyVim extra builds with `make`, which needs cargo (Rust).
    -- build.sh downloads the prebuilt native library from the GitHub release.
    build = "bash ./build.sh",
    -- Stick to the releases: build.sh downloads the libraries of the latest
    -- release, which don't match the main branch (LazyVim tracks main by default).
    version = "*",
    -- Required by recent avante versions, missing from the LazyVim extra.
    dependencies = {
      { "ColinKennedy/mega.cmdparse", dependencies = { "ColinKennedy/mega.logging" } },
    },
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
