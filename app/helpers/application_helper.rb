module ApplicationHelper
  def ad_types
    AdType.all.collect { |a| [a.name, a.id] }
  end

  def categories
    Category.all.collect { |c| [c.name, c.id] }
  end
end
