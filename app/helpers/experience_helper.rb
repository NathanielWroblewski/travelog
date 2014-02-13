module ExperienceHelper
  def orientation(rotation)
    case rotation
    when 0 then ''
    when 90 then 'portrait'
    when 180 then 'upside-down'
    when 270 then 'minus-portrait'
    else ''
    end
  end
end
