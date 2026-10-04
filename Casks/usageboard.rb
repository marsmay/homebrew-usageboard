cask "usageboard" do
  version "1.0.13"
  sha256 "4d2bba9f61573d73a5b835282a0707a0797ccf3258bd3354d85521e9d6d020d7"

  url "https://usageboard.may.ltd/UsageBoard-#{version}.zip"
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
