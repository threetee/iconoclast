unless defined? Iconoclast
  require 'fileutils'

  module Iconoclast

    # :stopdoc:
    LIBPATH = ::File.expand_path(::File.dirname(__FILE__)) + ::File::SEPARATOR
    PATH = ::File.dirname(LIBPATH) + ::File::SEPARATOR
    VERSION = File.open(File.join(LIBPATH, '..', 'version')).gets
    # :startdoc:

    module ControllerMixin

      def iconic(*args, &block)
        args.flatten.each do |arg|
          case arg
            when String, Symbol
              file_name = 'iconoclast/' + arg.to_s.underscore
              print "setting up helper for file_name = #{file_name}"
              helper(file_name)
            else
              helper(arg, &block)
          end
        end
      end

    end

    # Returns the version string for the library.
    #
    def self.version
      VERSION
    end

    def self.icons ( options = {} )
      options[:provider] ||= 'famfamfam'
      options[:set] ||= 'silk'
      options[:format] ||= 'png'
      globpath = ::File.join(libpath, 'iconoclast/icons', options[:provider], options[:set], options[:format], '*')
      Dir[globpath]
    end

    def self.icon_names ( options = {} )
      icons = self.icons(options)
      icons.collect!{|icon| File.basename(icon)}
    end
  
    # Returns the library path for the module. If any arguments are given,
    # they will be joined to the end of the library path using
    # <tt>File.join</tt>.
    #
    def self.libpath( *args )
      args.empty? ? LIBPATH : ::File.join(LIBPATH, *args)
    end
    
    # Returns the path for the module. If any arguments are given,
    # they will be joined to the end of the path using
    # <tt>File.join</tt>.
    #
    def self.path( *args )
      args.empty? ? PATH : ::File.join(PATH, *args)
    end
    
    # Utility method used to require all files ending in .rb that lie in the
    # directory below this file that has the same name as the filename passed
    # in. Optionally, a specific _directory_ name can be passed in such that
    # the _filename_ does not have to be equivalent to the directory.
    #

    def self.require_all_libs_relative_to( fname, dir = nil )
      dir ||= ::File.basename(fname, '.*')
      search_me = ::File.expand_path(
          ::File.join(::File.dirname(fname), dir, '**', '*.rb'))

      Dir.glob(search_me).sort.each {|rb| print "#{rb}\n"; require rb}
    end

  end

  require 'rubygems'
  require 'main'
  # Two ways of doing the same (or a similar) thing:
  # One
  Dir.glob(File.join(Iconoclast.libpath, 'iconoclast', '*_helper.rb')).each { |helper| require helper }
  # Two
#  Iconoclast.require_all_libs_relative_to __FILE__
end  # unless defined?