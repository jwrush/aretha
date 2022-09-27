# frozen_string_literal: true

require 'active_support/all'

module Aretha
  #A respect threat is the entire thread dedicated to a single character.
  class RespectThread 
    attr_reader :name, :image_url, :quote, :notes, :feat_sections

    def initialize(name, image_url, quote, notes, feat_sections)
      @name = name
      @image_url = image_url
      @quote = quote
      @notes = notes
      @feat_sections = feat_sections
    end

    def to_txt
      to_markdown
    end

    def to_markdown()
      to_return = <<~HERE
        #[#{name}](#{image_url})
        #{quote.to_markdown}
        -----
        #{notes.to_markdown}
      HERE
    end
  end
end
