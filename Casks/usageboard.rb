cask "usageboard" do
  version "0.1.31"
  sha256 "6aeb06fe5d7f7d52aeeffa6d155053fe8cb74eb4aedb9587e19a2aba0e81ff87"

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
