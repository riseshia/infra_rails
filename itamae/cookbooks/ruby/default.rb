node.reverse_merge!(
  rbenv: {
    user: node[:user],
    global: "2.4.3",
    versions: %w[2.4.3],
    scheme: "https",

    # Create ~/.rbenv/cache, optional (default: false)
    # See: https://github.com/rbenv/ruby-build#package-download-caching
    cache: true,
  },

  # ruby-build is always installed. Specifying revision improves performance.
  "ruby-build" => {
    revision: "5481719be87028063bd1a93cc27059bb7ebe1177"
  },

  # Optional plugin. Specify :install or :revision to install rbenv-default-gems.
  "rbenv-default-gems" => {
    "default-gems" => [
      "bundler",
      "bcat ~>0.6",
      "rails --pre",
    ],
    install: true
  },
)

include_recipe "rbenv::user"

execute "update .bashrc" do
  not_if "grep 'RBENV_ROOT' $HOME/.bashrc"

  command \
    %Q{echo 'export RBENV_ROOT=$HOME/.rbenv\nexport PATH="${RBENV_ROOT}/bin:${PATH}"\neval "$(rbenv init -)"' >> $HOME/.bashrc}
end
