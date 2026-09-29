cask "usageboard" do
  version "1.0.13"
  sha256 "8f08b52b428d726dd418794b83e4bfc8f7e6e6cc791bd98eed84fec5873fa310"

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
