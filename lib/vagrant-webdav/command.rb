module VagrantWebdav
  class Command < Vagrant.plugin("2", :command)
    def execute
      binding.pry
    end
  end
end
