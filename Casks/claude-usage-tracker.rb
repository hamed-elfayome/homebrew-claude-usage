cask "claude-usage-tracker" do
  version "3.1.0"
  sha256 "6e59326757fca6215a7da6363c49354c765b8c7902d06b1066d660cbe2d9782e"

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

    For more information, visit: https://github.com/hamed-elfayome/Claude-Usage-Tracker
  EOS
end
