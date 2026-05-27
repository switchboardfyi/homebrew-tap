class SwitchboardFyi < Formula
  desc "Local model-routing CLI for Codex and Claude Code"
  homepage "https://www.switchboard.fyi"
  url "https://registry.npmjs.org/switchboard-fyi/-/switchboard-fyi-0.2.6.tgz"
  sha256 "f0a2a611657b49dd01da32500a5ceb9728f07eb0abc4c5bfdcfe83efe959fa99"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: libexec)
    bin.install_symlink libexec/"bin/switchboard"
    bin.install_symlink libexec/"bin/switchboard-fyi"
    bin.install_symlink libexec/"bin/switchboard-gateway"
    bin.install_symlink libexec/"bin/switchboard-inspector"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/switchboard version")
  end
end
