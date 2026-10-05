class Agentdust < Formula
  desc "Finds and cleans processes that AI coding agents leave behind"
  homepage "https://github.com/hamzahamidi/agentdust"
  url "https://github.com/hamzahamidi/agentdust/releases/download/v0.1.0/agentdust-0.1.0-darwin-arm64.tar.gz"
  version "0.1.0"
  sha256 "06f3efa467bd0b3fef61239fa292abb735d8500e9b1942f9e5b3f9f9fd8b0374"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "agentdust"
  end

  test do
    assert_match "agentdust #{version}", shell_output("#{bin}/agentdust version")
  end
end
