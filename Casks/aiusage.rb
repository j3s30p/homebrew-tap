# frozen_string_literal: true

cask "aiusage" do
  version "1.3.1"
  sha256 "019061f4f15fcba7326fff1f8bc3cc18bdd7dfb1aef6beaaf65ba90a3af2b03b"

  url "https://github.com/j3s30p/AI_Usage/releases/download/v#{version}/AiUsage-v#{version}-macos-universal.zip"
  name "AiUsage"
  desc "Menu bar usage monitor for Codex and Claude"
  homepage "https://github.com/j3s30p/AI_Usage"

  depends_on macos: :sonoma

  app "AiUsage.app"

  uninstall quit: "com.j3s30p.AiUsage"

  zap trash: "~/Library/Preferences/com.j3s30p.AiUsage.plist"
end
