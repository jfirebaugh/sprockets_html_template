require "sprockets"

module Sprockets
  class HtmlTemplate < Tilt::Template
    def prepare
    end

    def evaluate(scope, locals, &block)
      source = data.dup

      escape_quotes!(source)
      escape_whitespace!(source)

      "function () { return '#{source}'; }"
    end

    private
    def escape_quotes!(source)
      source.gsub!(/\\/) { '\\\\' }
      source.gsub!(/'/) { "\\'" }
    end

    def escape_whitespace!(source)
      source.gsub!(/\r/, '\\r')
      source.gsub!(/\n/, '\\n')
      source.gsub!(/\t/, '\\t')
    end
  end
end

Sprockets::Engines # force autoload
Sprockets.register_engine ".html", Sprockets::HtmlTemplate
