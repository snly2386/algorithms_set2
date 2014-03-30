class MyHash
  def initialize
   @array = Array.new(64)
  end

  def find_index(key)
    key.hash%8

  end

  def []=(key, value)
    key_index = find_index(key) 
    @array[key_index] = value

  end

  def [](key)
    key_index = find_index(key)
    @array[key_index]
  end
end
