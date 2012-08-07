module ApplicationHelper
  def ad_types
    AdType.all.collect { |a| [a.name, a.id] }
  end

  def categories
    Category.all.collect { |c| [c.name, c.id] }
  end

  def humanize(num, attr)
    if num == 1
      return "#{num} #{attr}"
    elsif num > 1
      return "#{num} #{attr.pluralize}"
    else
      return nil
    end
  end
end
