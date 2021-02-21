module Jekyll
  class SingleImageTag < Jekyll::ResponsiveImage::Tag
    def render(context)
      "<div class='single-image'>#{super}</div>"
    end
  end

  class GalleryImageTag < Jekyll::ResponsiveImage::Tag
    def render(context)
      "<li class='gallery-image splide__slide'>#{super}</li>"
    end
  end

  class GalleryTagBlock < Liquid::Block
    def render(context)
      "<div class='gallery'><div class='splide'><div class='splide__track'><ul class='splide__list' style='list-style-type: none;'>#{super}</ul></div></div></div>"
    end
  end
end

Liquid::Template.register_tag("single_image", Jekyll::SingleImageTag)
Liquid::Template.register_tag("gallery_image", Jekyll::GalleryImageTag)
Liquid::Template.register_tag("gallery", Jekyll::GalleryTagBlock)
