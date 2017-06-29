class Link
  attr_accessor :next, :prev, :value
  def initialize(value)
    @value = value
    @prev = nil
    @next = nil
  end

  def remove_self
    @prev.next = @next if @prev
    @next.prev = @prev if @next
  end

end

class LRUCache
  attr_reader :hash, :get, :move_to_front

  def initialize(max)
    @max = max
    @hash = {}
    @head = Link.new(nil)
    @tail = Link.new(nil)
    @head.next = @tail
    @tail.prev = @head
  end

  def get(value)
    if hash[value]
      link = hash[value]
      link.remove_self
      move_to_front(link)
    else
      link = Link.new(value)
      @hash[value] = link
      move_to_front(link)
      check_cache_size
    end
    link.value
  end

  def check_cache_size
    if @hash.count > @max
      remove_link = @tail.prev
      remove_link.remove_self
      @hash.delete(remove_link.value)
    end
  end

  def move_to_front(link)
    old_front = @head.next
    @head.next = link
    link.prev = @head
    link.next = old_front
    old_front.prev = link
  end
end

cache = LRUCache.new(3)
cache.get(4)
test1 = []
cache.hash.each_key { |k| test1 << k }
p test1

cache.get(6)
test2 = []
cache.hash.each_key { |k| test2 << k }
p test2

cache.get(8)
test3 = []
cache.hash.each_key { |k| test3 << k }
p test3

cache.get(4)
test5 = []
cache.hash.each_key { |k| test5 << k }
p test5

cache.get(100)
test4 = []
cache.hash.each_key { |k| test4 << k }
p test4

cache.get(1000)
test5 = []
cache.hash.each_key { |k| test5 << k }
p test5
