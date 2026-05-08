cask "usageboard" do
  version "0.1.20"
  sha256 "f3c4c98408913bad334ca779d720e63568f151ac699d5e36d74e56071b0ff6d6"

  url "https://may.ltd/usageboard/UsageBoard-#{version}.zip"
  name "UsageBoard"
  desc "macOS menu bar app for aggregating API usage quotas"
  homepage "https://github.com/marsmay/UsageBoard"

  depends_on macos: ">= :ventura"

  app "UsageBoard.app"

  zap trash: [
    "~/Library/Application Support/UsageBoard",
  ]
end
