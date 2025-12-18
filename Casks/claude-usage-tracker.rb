cask "claude-usage-tracker" do
  version "1.5.0"
  sha256 "7639f718a210fc76d1f5ebf5b82a06826e2a4b838a539d914a94815882088d66"

  url "https://github.com/hamed-elfayome/Claude-Usage-Tracker/releases/download/v#{version}/Claude-Usage.zip"
  name "Claude Usage Tracker"
  desc "Native macOS menu bar app for monitoring Claude AI usage limits"
  homepage "https://github.com/hamed-elfayome/Claude-Usage-Tracker"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Claude Usage.app"

  zap trash: [
    "~/Library/Preferences/com.hamed.Claude-Usage.plist",
    "~/Library/Application Support/com.hamed.Claude-Usage",
    "~/.claude-session-key",
  ]

  caveats <<~EOS
    Claude Usage Tracker requires a session key from claude.ai to function.

    On first launch, you'll be guided through setup to extract your session key.

    Note: This app is not signed with an Apple Developer certificate.
    You'll need to approve it in System Settings → Privacy & Security on first launch.

    For more information, visit: https://github.com/hamed-elfayome/Claude-Usage-Tracker
  EOS
end
