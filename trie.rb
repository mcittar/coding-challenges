require "byebug"

class Node
  attr_accessor :value, :children, :count
  def initialize(letter = nil)
    @value = letter
    @children = []
    @count = 0
  end

  def self.get_index(character)
    character.ord - "a".ord
  end

  def get_node(character)
    children[Node.get_index(character)]
  end

  def set_node(character, node)
    children[Node.get_index(character)] = node
  end

  def add(word, index)
    return if index > word.length
    current = word[index]
    child = get_node(current)
    if child
      set_node(current, Node.new)
    end
    child.add(s, index + 1)
  end

end

def add(root, word)
  return if word == ""

  first = word.chars.take(1).join("")
  remaining = word.chars.drop(1).join("")
  next_trie = root.children.select { |node| node.value == first }[0]
  unless next_trie
    next_trie = Node.new(first)
    root.children[Node.get_index(first)] == next_trie
    root.count += 1
  end
  add(next_trie, remaining)
end

def find_count(root, word)

  first = word.chars.take(1).join("")
  remaining = word.chars.drop(1).join("")
  return root.count if remaining == ""

  next_trie = root.children.select { |node| node.value == first }[0]
  if next_trie
    find_count(next_trie, remaining)
  else
    return 0
  end

end

node = Node.new
add(node, "hack")
add(node, "hackerrank")
p find_count(node, "hak")
