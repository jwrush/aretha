require 'active_support/all'

module Aretha

  #a section is part of a respect thread that has a header
  class Section

    attr_reader :header_text, :text, :inner_headers, :inner_feats

    def initialize(header_text, text, inner_headers, inner_feats)
      @header_text = header_text
      @text = text
      @inner_headers = inner_headers
      @inner_feats = inner_feats
    end

    def to_markdown(depth)
    end
  end
end
