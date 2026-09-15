cask "usageboard" do
  version "1.0.5"
  sha256 "b6eaaffa21e7afad58124d01890a824b18b9e1cba3547b7dd2d8c72bd08ed16c"

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
