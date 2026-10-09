class AgentdustAT14 < Formula
  desc "Finds and cleans processes that AI coding agents leave behind"
  homepage "https://github.com/hamzahamidi/agentdust"
  url "https://github.com/hamzahamidi/agentdust/releases/download/v1.4.0/agentdust-1.4.0-darwin-arm64.tar.gz"
  version "1.4.0"
  sha256 "df3d61387d42baeebdad794737f4b56ce0683bdaad2cdcc20d2d759657718593"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "agentdust"
  end

  test do
    assert_match "agentdust #{version}", shell_output("#{bin}/agentdust version")
  end
end
