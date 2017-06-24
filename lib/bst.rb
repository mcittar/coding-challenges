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
    BinarySearchTree.find!(@root, value)
  end

  def inorder

  end

  def postorder

  end

  def preorder

  end

  def height
    BinarySearchTree.height!(@root)
  end

  def min
    BinarySearchTree.min(@root)
  end

  def max
    BinarySearchTree.max(@root)
  end

  def delete(value)
    BinarySearchTree.delete!(@root, value)
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

    if value < node.value
      return BinarySearchTree.find!(node.left, value)
    end

    BinarySearchTree.find!(node.right, value)
  end


  def self.preorder!(node)
    return [] unless node
    order = []
    queue = []
    queue << node if node
    until queue.empty?
      front = queue.shift
      order << front.value
      queue << front.left if front.left
      queue << front.right if front.right
    end
    order
  end

  def self.inorder!(node)
    
  end

  def self.postorder!(node)

  end

  def self.height!(node)
    return -1 unless node

    1 + [BinarySearchTree.height!(node.left), BinarySearchTree.height!(node.right)].max
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
    return nil unless node
    return node.right unless node.left

    node.left = BinarySearchTree.delete_min!(node.left)
    node
  end

  def self.delete!(node, value)
    return nil unless node

    if value < node.value
      node.left = BinarySearchTree.delete!(node.left, value)
    elsif value > node.value
      node.right = BinarySearchTree.delete!(node.right, value)
    else
      return node.left unless node.right
      return node.right unless node.left
      t = node
      node = BinarySearchTree.min(t.right)
      node.right = BinarySearchTree.delete_min!(t.right)
      node.left = t.left
    end

    node
  end
end

hash = Hash.new
node = BSTNode.new(0)
node2 = BSTNode.new(0)
hash[node] = true
p hash[node2]
p hash[node]
