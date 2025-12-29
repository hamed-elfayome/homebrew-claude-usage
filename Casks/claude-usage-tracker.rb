cask "claude-usage-tracker" do
  version "2.1.0"
  sha256 "a795ffff9a46dcff94debe70b817fb3b42c3aa35ee5c8abd2202e5fdd688c80c"

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
