class Bst

  attr_reader :data
  attr_accessor :left, :right
  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(new_datum, bst = self)
    if new_datum <= bst.data && !bst.left
      bst.left = Bst.new(new_datum)
    elsif new_datum > bst.data && !bst.right
      bst.right = Bst.new(new_datum)
    elsif new_datum <= bst.data
      insert(new_datum, bst.left)
    else
      insert(new_datum, bst.right)
    end
  end

  def each(&block)
    flattened.each(&block)
  end

  def flattened(bst = self)
    if !bst
      []
    else
      flattened(bst.left) + [bst.data] + flattened(bst.right)
    end
  end
end
