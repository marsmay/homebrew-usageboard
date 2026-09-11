cask "usageboard" do
  version "1.0.3"
  sha256 "cdd19610a83de6cfd6b607d30c0429dc2169df2cbb56c51d490dab884cda8c38"

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
