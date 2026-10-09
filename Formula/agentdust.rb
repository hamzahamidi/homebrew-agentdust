class Agentdust < Formula
  desc "Finds and cleans processes that AI coding agents leave behind"
  homepage "https://github.com/hamzahamidi/agentdust"
  url "https://github.com/hamzahamidi/agentdust/releases/download/v1.5.1/agentdust-1.5.1-darwin-arm64.tar.gz"
  version "1.5.1"
  sha256 "72dd14ac5f603fc8d1631b5922aecd04238f5d48da0346242b67a9cf166022a4"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "agentdust"
  end

  test do
    assert_match "agentdust #{version}", shell_output("#{bin}/agentdust version")
  end
end
