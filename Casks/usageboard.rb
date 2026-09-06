cask "usageboard" do
  version "1.0.1"
  sha256 "1d4c935820a657b98a7bcf4c793745c3a66237a3fc6affdaf6c820692e1c0f42"

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
