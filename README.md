# Homebrew Tap for Claude Usage Tracker

Official Homebrew tap for [Claude Usage Tracker](https://github.com/hamed-elfayome/Claude-Usage-Tracker) - a native macOS menu bar application for real-time monitoring of Claude AI usage limits.

## Installation

**One-line install** (recommended):
```bash
brew install --cask hamed-elfayome/claude-usage/claude-usage-tracker
```

Or tap first, then install:
```bash
brew tap hamed-elfayome/claude-usage
brew install --cask claude-usage-tracker
```

## Updating

```bash
# Update Homebrew
brew update

# Upgrade Claude Usage Tracker
brew upgrade --cask claude-usage-tracker
```

## Uninstallation

```bash
# Uninstall the app
brew uninstall --cask claude-usage-tracker

# Optionally remove the tap
brew untap hamed-elfayome/claude-usage
```

## About

Claude Usage Tracker is a lightweight, native macOS menu bar application that provides:

- **Real-time monitoring** of your 5-hour session window
- **Weekly usage tracking** across all models
- **Opus-specific monitoring** for Claude Opus usage
- **Smart notifications** at usage thresholds
- **Auto-start sessions** when your session resets
- **Claude Code integration** for terminal statusline display

For full documentation, features, and source code, visit the [main repository](https://github.com/hamed-elfayome/Claude-Usage-Tracker).

## Security Note

This app requires a session key from claude.ai to fetch your usage data. The session key is:
- Stored locally in `~/.claude-session-key` with restrictive permissions (0600)
- Never transmitted to any third party
- Only used to communicate with claude.ai's API

The app is fully open source - you can audit the code or build from source.

## Verification

Each release includes SHA-256 checksums for verification:

```bash
# Verify the downloaded file
shasum -a 256 /path/to/Claude-Usage.zip

# Compare with the sha256 in the cask formula
brew cat claude-usage-tracker | grep sha256
```

## Requirements

- macOS 14.0 (Sonoma) or later
- Active Claude AI account
- Session key from claude.ai

## Support

- **Issues**: [GitHub Issues](https://github.com/hamed-elfayome/Claude-Usage-Tracker/issues)
- **Discussions**: [GitHub Discussions](https://github.com/hamed-elfayome/Claude-Usage-Tracker/discussions)
- **Main Repo**: [Claude-Usage-Tracker](https://github.com/hamed-elfayome/Claude-Usage-Tracker)

## License

This tap is maintained as part of the Claude Usage Tracker project, which is licensed under the MIT License.
