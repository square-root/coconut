module Coconut

  class CLI < Thor

    desc 'install', 'install the coconut on the local enviroment'
    def install
      p "Creating config folder at #{Coconut::Global.configure.config_folder.path}"
      Coconut::Global.install
    end

    desc 'init', 'init a folder with a coconut instance'
    def init
      App.current.init
    end

    desc 'fetch', 'fetch the config files from a server'
    def fetch(customer)
      Server.from(customer_name: customer).fetch
    end

    desc 'swap', 'swap the config files from a server'
    def swap(customer)
      App.current.swap(customer_name: customer)
    end

    desc 'version', 'Display the gem version'
    def version
      p Coconut::VERSION.cyan
    end

  end

end
