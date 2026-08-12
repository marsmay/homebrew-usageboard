cask "usageboard" do
  version "0.1.37"
  sha256 "c3fe46ff686d688a5515e679bc920305da161c9c4293da0b3e4de88d6fb1b7fa"

  url "https://may.ltd/usageboard/UsageBoard-#{version}.zip",
      verified: "may.ltd/usageboard/"
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
