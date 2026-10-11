class AgentdustAT17 < Formula
  desc "Finds and cleans processes that AI coding agents leave behind"
  homepage "https://github.com/hamzahamidi/agentdust"
  url "https://github.com/hamzahamidi/agentdust/releases/download/v1.7.1/agentdust-1.7.1-darwin-arm64.tar.gz"
  version "1.7.1"
  sha256 "1c5373dd5a41decb262470d43df0e8d6b44b2681874a18b3a9d1d31e77bb9928"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "agentdust"
  end

  test do
    assert_match "agentdust #{version}", shell_output("#{bin}/agentdust version")
  end
end
