class GitChain < Formula
  desc "Tool to rebase multiple Git branches based on the previous one"
  homepage "https://github.com/Shopify/git-chain"
  license "MIT"
  head "https://github.com/Shopify/git-chain.git"

  depends_on "git"
  depends_on "ruby"

  def install
    rm_f "bin/console"
    rm_f "bin/update-deps"
    prefix.install Dir["*"]
  end

  test do
    system "git-chain"
  end
end
