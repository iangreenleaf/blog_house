module Jekyll
  class SingleImageTag < Jekyll::ResponsiveImage::Tag
    def render(context)
      "<div class='single-image lightgallery'>#{super}</div>"
    end
  end

  class GalleryImageTag < Jekyll::ResponsiveImage::Tag
    def render(context)
      idx = context['gallery_idx']
      context.push('gallery_idx' => idx + 1)
      tag = "<div class='gallery-image'><div class='wrapper'>#{super}</div></div>"
      if idx > 1
        "<noscript>#{tag}</noscript>"
      else
        tag
      end
    end
  end

  class GalleryTagBlock < Liquid::Block
    def render(context)
      @caption = unless @title.nil? then "<caption class='title'><h3>#{@title}</h3></caption>" end
      context.stack('gallery_idx' => 0) do
        "<div class='gallery lightgallery'>#{super(context)}</div>"
      end
    end
  end
end

Liquid::Template.register_tag("single_image", Jekyll::SingleImageTag)
Liquid::Template.register_tag("gallery_image", Jekyll::GalleryImageTag)
Liquid::Template.register_tag("gallery", Jekyll::GalleryTagBlock)
