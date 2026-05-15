cask "usageboard" do
  version "0.1.26"
  sha256 "5a1104181814115bc73fae30c3fbe7a8d4d37581b72e24fc854ca4eab0ea6625"

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
