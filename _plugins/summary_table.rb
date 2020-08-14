module Jekyll
  class SummaryTableTagBlock < Liquid::Block
    def initialize(tag_name, markup, tokens)
      super
      @type = markup
    end

    def render(context)
      "<table class='summary #{@type}'>#{super}</table>"
    end
  end

  class SummaryTableLineItem < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @description, @amount = text.split(" | ")
    end

    def render(context)
      "<tr><td class='description'>#{@description}</td><td class='amount'>#{@amount}</td></tr>"
    end
  end
end

Liquid::Template.register_tag('summary', Jekyll::SummaryTableTagBlock)
Liquid::Template.register_tag('line_item', Jekyll::SummaryTableLineItem)
