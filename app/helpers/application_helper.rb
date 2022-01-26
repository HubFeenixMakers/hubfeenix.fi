module ApplicationHelper
  $background = ""
  def background_class(card_section)
    $background = card_section.content_by_name(:background).essence.value
    return "" unless $background
    case $background
    when "dark_blue"
      "bg-dark_blue text-white"
    else
      "bg-#{$background}"
    end
  end
  def grid_class(element)
    grid = element.content_by_name(:grid).essence.value.split("-").first
    "grid-cols-#{grid}"
  end
  def title_color_class()
    case $background
    when "dark_blue"
      "text-white"
    else
      "text-title"
    end
  end
  def subtitle_color_class()
    case $background
    when "dark_blue"
      "text-white"
    else
      "text-description"
    end
  end
end
