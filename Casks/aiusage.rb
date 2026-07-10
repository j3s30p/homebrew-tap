cask "aiusage" do
  version "0.1.0"
  sha256 "4369bf6745869f936ef541984dacec85f16d6eff8d86dc0657641b1d28e533ff"

  url "https://github.com/j3s30p/AI_Usage/releases/download/v#{version}/AiUsage-v#{version}-macos-universal.zip"
  name "AiUsage"
  desc "Menu bar usage monitor for Codex and Claude"
  homepage "https://github.com/j3s30p/AI_Usage"

  depends_on macos: :sonoma

  app "AiUsage.app"
  binary "claude-statusline-aiusage.sh",
         target: "aiusage-claude-statusline"

  uninstall quit: "com.j3s30p.AiUsage"

  zap trash: "~/Library/Preferences/com.j3s30p.AiUsage.plist"

  caveats <<~EOS
    AiUsage #{version} is an unsigned, unnotarized preview. After the first
    blocked launch, macOS may require System Settings > Privacy & Security >
    Open Anyway. This cask does not bypass Gatekeeper.
  EOS
end
