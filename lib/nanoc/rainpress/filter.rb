# encoding: utf-8

require 'rainpress'

module Nanoc::Rainpress

  class Filter < Nanoc::Filter

    identifier :rainpress

    def run(content, params={})
      ::Rainpress.compress(content, params)
    end

  end

end
