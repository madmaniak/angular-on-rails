require 'tilt/template'

module Tilt

  class AngularTemplate < Template

    def self.find_dependencies path
      path.children.select{ |c| c.directory? }
      .collect{ |c| relative(c).camelize.inspect }.join(',')
    end

    def self.relative path
      /assets\/javascripts\/(.*)/.match(path.to_s)[1]
    end

    def prepare
      @path = AngularTemplate.relative(dir_path)

      @name = controller_name
      @module = @path.camelize
      @deps = AngularTemplate.find_dependencies(dir_path)
      @route = get_route
    end

    def evaluate(scope, locals, &block)
      @output ||= controller_helper
    end

    private

    def dir_path
      @dir_path ||= Pathname.new(file).dirname
    end

    def controller_name
      @path.split('/').last.capitalize + 'Ctrl'
    end

    def get_route
      @path.gsub(/^app/, '')
    end

    def controller_helper
      "Hs.controller( '#{@name}', '#{@module}', [#{@deps}], '#{@route}', #{data}\n)"
    end

  end

end
