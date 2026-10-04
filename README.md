# Homebrew tap for AgentDust

[AgentDust](https://github.com/hamzahamidi/agentdust) finds the processes that AI coding agents leave running and stops them after you approve each one.

```bash
brew install hamzahamidi/agentdust/agentdust
```

The formula in `Formula/agentdust.rb` is written by the AgentDust release workflow. It pins the release tarball and its SHA256 digest, and the tarball carries a GitHub artifact attestation.

Verify a download with `gh attestation verify <tarball> --repo hamzahamidi/agentdust`.

Report problems at [hamzahamidi/agentdust](https://github.com/hamzahamidi/agentdust/issues).
