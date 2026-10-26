class Agentdust < Formula
  desc "Finds and cleans processes that AI coding agents leave behind"
  homepage "https://github.com/hamzahamidi/agentdust"
  url "https://github.com/hamzahamidi/agentdust/releases/download/v1.8.2/agentdust-1.8.2-darwin-arm64.tar.gz"
  version "1.8.2"
  sha256 "2d0d8d880868b47c3cd934b24206dde8f78257bc1a4e34aad08b0ce488e84168"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "agentdust"
  end

  test do
    assert_match "agentdust #{version}", shell_output("#{bin}/agentdust version")
  end
end
