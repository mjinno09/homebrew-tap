class DevinMcp < Formula
  desc "MCP server for creating and managing Devin AI sessions"
  homepage "https://github.com/mjinno09/devin-mcp"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjinno09/devin-mcp/releases/download/v#{version}/devin-mcp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e75475f5071a8ae51cb1bb70ea356ce84f3193e23c67196251931a0822889838"
    else
      url "https://github.com/mjinno09/devin-mcp/releases/download/v#{version}/devin-mcp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1bd929193ebf7ae4866ad158ad1d7c43be1c9f582064c616917da01f75afa3dd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mjinno09/devin-mcp/releases/download/v#{version}/devin-mcp-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d64ddc5ec323154908484301d1c8705276e8d240762eebd995604d9c8c47ec7"
    end
  end

  def install
    bin.install "devin-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devin-mcp --version")
  end
end
