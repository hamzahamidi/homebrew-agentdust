class Agentdust < Formula
  desc "Finds and cleans processes that AI coding agents leave behind"
  homepage "https://github.com/hamzahamidi/agentdust"
  url "https://github.com/hamzahamidi/agentdust/releases/download/v1.8.1/agentdust-1.8.1-darwin-arm64.tar.gz"
  version "1.8.1"
  sha256 "4ccdf7b16a7dd1402045d0b9b014716310bcd632af97f43e17c5d28a3cb59590"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "agentdust"
  end

  test do
    assert_match "agentdust #{version}", shell_output("#{bin}/agentdust version")
  end
end
