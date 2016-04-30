class Array
  def accumulate(&function)
    acc = []
    self.each do |element|
      acc << yield(element)
    end
    acc
  end
end
