cask "usageboard" do
  version "0.1.21"
  sha256 "a5fbea87f3121ff4767b15c28ee3bd7c0b276cbc2ef2a56264a4588631b1540c"

  url "https://may.ltd/usageboard/UsageBoard-#{version}.zip",
      verified: "may.ltd/usageboard/"
  name "UsageBoard"
  desc "macOS menu bar app for aggregating API usage quotas"
  homepage "https://github.com/marsmay/UsageBoard"

  depends_on macos: ">= :ventura"

  app "UsageBoard.app"

  zap trash: [
    "~/Library/Application Support/UsageBoard",
  ]
end
