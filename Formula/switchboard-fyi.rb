class SwitchboardFyi < Formula
  desc "Local model-routing CLI for Codex and Claude Code"
  homepage "https://www.switchboard.fyi"
  url "https://registry.npmjs.org/switchboard-fyi/-/switchboard-fyi-0.2.12.tgz"
  sha256 "834d5b4343210b8c751afceb5278fcd5f830c9022f06c6a552e99ad4e17be4cd"
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
