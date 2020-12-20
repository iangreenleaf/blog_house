For a single image, use this:

{% single_image path: assets/images/my-post/thing.jpg alt: "A thing", caption: "A caption" %}

For a multi-image gallery, use this:

{% gallery %}
{% gallery_image path: assets/images/my-post/thing-1.jpg alt: "Thing 1", caption: 'You can do <a href="https://w3.org/">HTML</a> in captions.' %}
{% gallery_image path: assets/images/my-post/thing-2.jpg %}
{% endgallery %}

## Time & Materials ##

Don't forget this section at the end!

{% summary time %}
{% line_item Doing stuff | 6 hours %}
{% line_item Cleanup | ~1 hour %}
{% total ~7 hours %}
{% endsummary %}

{% summary cost %}
{% subtotal_heading A section %}
{% line_item Apples | $15 %}
{% line_item Oranges | $5 %}
{% subtotal $20 %}
{% line_item Delivery | $1 %}
{% total $21 %}
{% endsummary %}
