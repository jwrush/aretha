# frozen_string_literal: true

require 'active_support/all'

module Aretha
  # Feat represent a single feat entry in a respect thread
  class Feat 
    attr_reader :text, :url, :citation, :superscripts

    SUPERSCRIPT_FORMAT = '^%s'
    MARKDOWN_FORMAT = '[%s](%s "%s")%s'

    def initialize(text, url, citation, superscripts: "", is_limit: false)
      @text = text
      @url = url
      @citation = citation
      @superscripts = superscripts
      @is_limit = is_limit 
    end

    def to_txt
      to_markdown
    end

    def to_markdown
      superscript_string = superscripts.blank? ? '' : format(SUPERSCRIPT_FORMAT, @superscripts)

      format(MARKDOWN_FORMAT, @text, @url, @citation, superscript_string)
    end
  end
end
