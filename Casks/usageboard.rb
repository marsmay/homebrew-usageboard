cask "usageboard" do
  version "1.0.9"
  sha256 "bd8d10e9ec2d9478981b5f19bbc0dfcd081d6013c2796d709705de2352fdee37"

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
