cask "usageboard" do
  version "0.1.32"
  sha256 "1ced52e69254081cf14297d60c177089845d1886aaf901a2eb27b5e8ea205714"

  url "https://may.ltd/usageboard/UsageBoard-#{version}.zip"
  name "UsageBoard"
  desc "macOS menu bar app for API usage tracking"
  homepage "https://github.com/marsmay/UsageBoard"

  depends_on macos: ">= :ventura"

  app "UsageBoard.app"

  zap trash: [
    "~/Library/Application Support/UsageBoard",
    "~/Library/Caches/UsageBoard",
  ]
end
