module Jekyll
  class SingleImageTag < Jekyll::ResponsiveImage::Tag
    def render(context)
      "<div class='single-image lightgallery'>#{super}</div>"
    end
  end

  class GalleryImageTag < Jekyll::ResponsiveImage::Tag
    def render(context)
      "<div class='gallery-image'><div class='wrapper'>#{super}</div></div>"
    end
  end

  class GalleryTagBlock < Liquid::Block
    def render(context)
      @caption = unless @title.nil? then "<caption class='title'><h3>#{@title}</h3></caption>" end
      "<div class='gallery lightgallery'>#{super}</div>"
    end
  end
end

Liquid::Template.register_tag("single_image", Jekyll::SingleImageTag)
Liquid::Template.register_tag("gallery_image", Jekyll::GalleryImageTag)
Liquid::Template.register_tag("gallery", Jekyll::GalleryTagBlock)
