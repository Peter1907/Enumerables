module MyEnumerable
  def all?
    @list.each { |item| return false unless yield item }
    true
  end

  def any?
    @list.each { |item| return true if yield item }
    false
  end

  def filter
    @list.each { |item| yield @list.delete(item) unless yield item }
  end
end
