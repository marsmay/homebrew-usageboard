cask "usageboard" do
  version "0.1.19"
  sha256 "fba300ccc2feb6d92f3b5007e425a7f0d042b0458e0e6865dcd7eac0bcb40d0c"

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
