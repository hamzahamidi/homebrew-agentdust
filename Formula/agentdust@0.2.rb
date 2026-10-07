class AgentdustAT02 < Formula
  desc "Finds and cleans processes that AI coding agents leave behind"
  homepage "https://github.com/hamzahamidi/agentdust"
  url "https://github.com/hamzahamidi/agentdust/releases/download/v0.2.0/agentdust-0.2.0-darwin-arm64.tar.gz"
  version "0.2.0"
  sha256 "df6f7e850a18463f683fb40fe37b02a2eb9d56129c1d90db0c8018aea7872cdd"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "agentdust"
  end

  test do
    assert_match "agentdust #{version}", shell_output("#{bin}/agentdust version")
  end
end
