cask "usageboard" do
  version "1.0.11"
  sha256 "9d75011d815b6902d5a1f8ceb36909e9115b83ec81cce7774872371ef91b5cf6"

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
