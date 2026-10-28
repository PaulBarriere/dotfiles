-- avante.nvim (enabled with the LazyVim extra "ai.avante")
-- Drives the official Claude Code through ACP (claude-agent-acp, installed in
-- the image), so it uses the Claude Code login (`claude` then `/login`).
-- The direct "claude" provider with auth_type = "max" gets 429 errors.
return {
  {
    "yetone/avante.nvim",
    opts = {
      provider = "claude-code",
      acp_providers = {
        ["claude-code"] = {
          env = {
            -- avante defaults to "bypassPermissions": ask before edits/commands
            ACP_PERMISSION_MODE = "default",
          },
        },
      },
    },
  },
}
