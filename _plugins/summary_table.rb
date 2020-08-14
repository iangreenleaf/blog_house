module Jekyll
  class SummaryTableTagBlock < Liquid::Block
    def initialize(tag_name, markup, tokens)
      super
      @type, @title = markup.split(", ")
    end

    def render(context)
      @caption = unless @title.nil? then "<caption class='title'><h3>#{@title}</h3></caption>" end
      "<table class='summary #{@type}'>#{@caption}#{super}</table>"
    end
  end

  class SummaryTableLineItem < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @description, @amount = text.split(" | ")
    end

    def render(context)
      "<tr class='line-item'><td class='description'>#{@description}</td><td class='amount'>#{@amount}</td></tr>"
    end
  end

  class SummaryTableSubtotalHeading < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @title = text
    end

    def render(context)
      "<tr class='subtotal-heading'><th colspan='2'>#{@title}</th></tr>"
    end
  end

  class SummaryTableTotal < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @amount = text
    end

    def render(context)
      "<tr class='total'><td class='description'>Total</td><td class='amount'>#{@amount}</td></tr>"
    end
  end
end

Liquid::Template.register_tag('summary', Jekyll::SummaryTableTagBlock)
Liquid::Template.register_tag('line_item', Jekyll::SummaryTableLineItem)
Liquid::Template.register_tag('subtotal_heading', Jekyll::SummaryTableSubtotalHeading)
Liquid::Template.register_tag('total', Jekyll::SummaryTableTotal)
