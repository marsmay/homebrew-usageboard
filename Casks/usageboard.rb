cask "usageboard" do
  version "1.0.6"
  sha256 "621e9512e19347bc95a9c04ec934bbb44699b43105e491f825a86c8e522ffbd4"

  url "https://may.ltd/usageboard/UsageBoard-#{version}.zip"
  name "UsageBoard"
  desc "Menu bar app for API usage tracking"
  homepage "https://github.com/marsmay/UsageBoard"

  depends_on macos: :ventura

  app "UsageBoard.app"

  zap trash: [
    "~/Library/Application Support/UsageBoard",
    "~/Library/Caches/UsageBoard",
  ]
end
