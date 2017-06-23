class BSTNode
  attr_accessor :left, :right
  attr_reader :value

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

class BinarySearchTree
  def initialize
    @root = nil
  end

  def insert(value)
    if @root.nil?
      @root = BSTNode.new(value)
      return
    end
    BinarySearchTree.insert!(@root, value)
  end

  def find(value)
    BinarySearchTree.find!(value)
  end

  def inorder

  end

  def postorder

  end

  def preorder

  end

  def height

  end

  def min
    BinarySearchTree.min(@root)
  end

  def max
    BinarySearchTree.max(@root)
  end

  def delete(value)

  end

  def self.insert!(node, value)
    return BSTNode.new(value) unless node

    if value > node.value
      node.right = BinarySearchTree.insert!(node.right, value)
    else
      node.left = BinarySearchTree.insert!(node.left, value)
    end

    node
  end

  def self.find!(node, value)
    return nil unless node
    return node if node.value == value
  end

  def self.preorder!(node)

  end

  def self.inorder!(node)

  end

  def self.postorder!(node)

  end

  def self.height!(node)

  end

  def self.max(node)
    return node if node.right.nil?
    BinarySearchTree.max(node.right)
  end

  def self.min(node)
    return node if node.left.nil?
    BinarySearchTree.min(node.left)
  end

  def self.delete_min!(node)

  end

  def self.delete!(node, value)

  end
end

hash = Hash.new
node = BSTNode.new(0)
node2 = BSTNode.new(0)
hash[node] = true
p hash[node2]
p hash[node]
