module ApplicationHelper
  
  def background_class(card_section)
    background = card_section.content_by_name(:background).essence.value
    return "" unless background
    case background
    when "dark_blue"
      "bg-dark_blue text-white"
    else
      "bg-#{background}"
    end
  end
  
  def title_color_class(card_section)
	background = card_section.content_by_name(:background).essence.value
    case background 
    when "dark_blue"
      "text-white"
    else
      "text-light_blue"
    end
  end
  def subtitle_color_class(card_section)
	background = card_section.content_by_name(:background).essence.value
    case background
    when "dark_blue"
      "text-white"
    else
      "text-dark_blue"
    end
  end
  def grid_class(element)
    grid = element.content_by_name(:grid).essence.value.split("-").first
    case grid
    when "3"
      "xl:grid-cols-3 md:grid-cols-2 sm:grid-cols-1 gap-11"
    when "2"
      "xl:grid-cols-2 sm:grid-cols-1 gap-8 my-2.5"
	when "1"
       "grid-cols-1 gap-6"
    end
  end
end
