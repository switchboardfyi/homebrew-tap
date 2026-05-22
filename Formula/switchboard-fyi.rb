class SwitchboardFyi < Formula
  desc "Local model-routing CLI for Codex and Claude Code"
  homepage "https://www.switchboard.fyi"
  url "https://registry.npmjs.org/switchboard-fyi/-/switchboard-fyi-0.1.0.tgz"
  sha256 "2785ca0d1c0f70013dcfe5172849015ed12ab385088ee043982dc4092350c2c1"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: libexec)
    bin.install_symlink libexec/"bin/switchboard"
    bin.install_symlink libexec/"bin/switchboard-fyi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/switchboard version")
  end
end
