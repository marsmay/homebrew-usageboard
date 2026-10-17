cask "usageboard" do
  version "1.0.13"
  sha256 "f9260e8fd5177c5d9e38f0a6327feabad4765b4c911a309b61c83c6f38b2c3d9"

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
