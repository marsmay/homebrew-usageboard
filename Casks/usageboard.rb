cask "usageboard" do
  version "1.0.12"
  sha256 "c058e2b9ff01f1bd8f42fe21842e3d5b1487fd719cbe7cb648de6ec4e7b5ff2d"

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
