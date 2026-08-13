cask "usageboard" do
  version "0.1.38"
  sha256 "1894d7b6552627f43aef3229a92c857147cdb1e0eda5be1a9222bee0b9153317"

  url "https://may.ltd/usageboard/UsageBoard-#{version}.zip",
      verified: "may.ltd/usageboard/"
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
