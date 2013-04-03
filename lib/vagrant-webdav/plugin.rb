module VagrantWebdav
  class Plugin < Vagrant.plugin("2")
    name "Mount WebDAV shares in your Vagrant VM."

    command "webdav" do
      require_relative "command"
      next VagrantPort::Command
    end
  end
end
