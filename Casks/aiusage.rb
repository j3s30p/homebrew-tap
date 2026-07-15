cask "aiusage" do
  version "1.2.1"
  sha256 "535a2dde036bf6c7cdcc8b1c29f020af01b09495b0147ebacad175c13bb22956"

  url "https://github.com/j3s30p/AI_Usage/releases/download/v#{version}/AiUsage-v#{version}-macos-universal.zip"
  name "AiUsage"
  desc "Menu bar usage monitor for Codex and Claude"
  homepage "https://github.com/j3s30p/AI_Usage"

  depends_on macos: :sonoma

  app "AiUsage.app"

  uninstall quit: "com.j3s30p.AiUsage"

  zap trash: "~/Library/Preferences/com.j3s30p.AiUsage.plist"
end
