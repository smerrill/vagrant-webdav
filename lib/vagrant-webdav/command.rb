module VagrantWebdav
  class Command < Vagrant.plugin("2", :command)
    def execute
      url = @env.config_global.webdav.webdav_url
      mount_path = @env.config_global.webdav.webdav_mount_path

      # @TODO: Ugly. Redo this.
      if `mount`.split("\n").grep(/#{mount_path}/).empty?
        unless File.exists?(mount_path)
          @env.ui.info("Creating the WebDAV share volume.")
          system("mkdir #{mount_path}")
        end
        @env.ui.info("Mounting the WebDAV share volume.")
        system("mount_webdav -S #{url} #{mount_path}")
      else
        @env.ui.info("The WebDAV share was already mounted.")
      end

      system("open #{mount_path}")
    end
  end
end
