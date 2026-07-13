cask "aiusage" do
  version "1.0.1"
  sha256 "f97fb46e2db205aaf1943be16364bdc7da2637b360d73be5ff006cd7b0146ee6"

  url "https://github.com/j3s30p/AI_Usage/releases/download/v#{version}/AiUsage-v#{version}-macos-universal.zip"
  name "AiUsage"
  desc "Menu bar usage monitor for Codex and Claude"
  homepage "https://github.com/j3s30p/AI_Usage"

  depends_on macos: :sonoma

  app "AiUsage.app"

  uninstall quit: "com.j3s30p.AiUsage"

  zap trash: "~/Library/Preferences/com.j3s30p.AiUsage.plist"
end
