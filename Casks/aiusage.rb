cask "aiusage" do
  version "0.1.1"
  sha256 "beb561dc98ddc863e2637c53df892cf294885f4f2200d5dea4871955773b52c0"

  url "https://github.com/j3s30p/AI_Usage/releases/download/v#{version}/AiUsage-v#{version}-macos-universal.zip"
  name "AiUsage"
  desc "Menu bar usage monitor for Codex and Claude"
  homepage "https://github.com/j3s30p/AI_Usage"

  depends_on macos: :sonoma

  app "AiUsage.app"

  uninstall quit: "com.j3s30p.AiUsage"

  zap trash: "~/Library/Preferences/com.j3s30p.AiUsage.plist"

  caveats <<~EOS
    AiUsage #{version} is an unsigned, unnotarized preview. After the first
    blocked launch, macOS may require System Settings > Privacy & Security >
    Open Anyway. This cask does not bypass Gatekeeper.
  EOS
end
