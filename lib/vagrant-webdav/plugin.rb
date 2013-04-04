module VagrantWebdav
  class Plugin < Vagrant.plugin("2")
    name "Webdav"
    description = "This plugin lets you mount a WebDAV share from the guest."

    config "webdav" do
      require_relative "config"
      Config
    end

    command "webdav" do
      require_relative "command"
      Command
    end
  end
end
