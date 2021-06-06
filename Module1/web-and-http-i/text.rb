module Text
  # Bad practices on code structure that serve just for the example
  @background_rgb = " background: rgb(34,193,195);"
  @background_gradient = "background: linear-gradient(0deg, rgba(34,193,195,1) 0%, rgba(253,187,45,0.6110644941570378) 100%); "
  @title_position = "position: center; text-align: center;"
  @img_style = "width: 30%; border: 1px black solid;margin: 15px 520px;"
  @width = "width: 30%"
  CAT_URL = "https://static.toiimg.com/photo/msid-67586673/67586673.jpg?3918697"

  def self.output
    title = "<h2 style='#{@background_rgb}#{@background_gradient}#{@width}#{@title_position}'>Here is the cat</h2>"
    img = "<img src='#{CAT_URL}' alt='Here should be a cat :(' style='#{@img_style}' ></img>"
    [title + '<br>' + img]
  end
end