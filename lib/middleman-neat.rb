# frozen_string_literal: true

require "middleman-neat/version"

module MiddlemanNeat
  class Extension < Middleman::Extension
    def initialize(app, options_hash = {}, &block)
      require "neat"
      gem_dir = Gem::Specification.find_by_name("neat").gem_dir
      Sass.load_paths << File.expand_path("./app/assets/stylesheets", gem_dir)
    end
  end
end

::Middleman::Extensions.register(:neat, MiddlemanNeat::Extension)
