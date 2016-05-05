class Array
  def keep(&strain)
    self.find_all { |element| yield(element) }
  end

  def discard(&strain)
    self.find_all { |element| !yield(element) }
  end
end
