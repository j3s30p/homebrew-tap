# frozen_string_literal: true

cask "aiusage" do
  version "1.3.0"
  sha256 "4ad4379fc5aca40a7d9ed02f4ace6d04f12d3fc4fd257458ee801cbcb326fd46"

  url "https://github.com/j3s30p/AI_Usage/releases/download/v#{version}/AiUsage-v#{version}-macos-universal.zip"
  name "AiUsage"
  desc "Menu bar usage monitor for Codex and Claude"
  homepage "https://github.com/j3s30p/AI_Usage"

  depends_on macos: :sonoma

  app "AiUsage.app"

  uninstall quit: "com.j3s30p.AiUsage"

  zap trash: "~/Library/Preferences/com.j3s30p.AiUsage.plist"
end
