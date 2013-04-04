# Vagrant::Webdav

A Vagrant plugin that provides a command to mount a WebDAV mount from a guest to an OS X host.

## Installation

Install the plugin to Vagrant:

    vagrant plugin install vagrant-webdav

And then execute:

    $ vagrant webdav

## Usage

WebDAV configuration should be done in this fashion in a 1.1 Vagrantfile:

    Vagrant::configure("2") do |config|
      config.webdav.webdav_mount_path = "/Volumes/vagrant"
      config.webdav.webdav_url = "http://vagrant.local:8080/"
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
