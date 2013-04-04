module VagrantWebdav
  class Config < Vagrant.plugin("2", :config)
    attr_accessor :webdav_mount_path
    attr_accessor :webdav_url

    def initialize
      @webdav_mount_path = UNSET_VALUE
      @webdav_url = UNSET_VALUE
    end

    def finalize!
      @webdav_mount_path = "/Volumes/vagrant" if @webdav_mount_path == UNSET_VALUE
    end
  end
end
