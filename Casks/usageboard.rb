cask "usageboard" do
  version "0.1.23"
  sha256 "3413b8d8ed0f06db915284e4aaabaedfca9fbfaca2f857f17b849084f7083f5c"

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
