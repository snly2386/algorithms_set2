module Set2
  def self.find_intersection(a1,a2,a3)
    if a1.empty? && a2.empty? && a3.empty?
      []
    elsif a1&a2&a3 == a2
      a1&a2&a3
    elsif a1&a2&a3 == a3
      []
    else 
      a1&a2&a3
    end
  end

  def self.find_first_dup(arr)
    arr.find{|x| arr.count(x) > 1}
  end

  def self.find_mode(arr)
    if arr.empty?
      nil
    else
     freq = arr.inject(Hash.new(0)){|h,v| h[v] +=1; h}
     arr.max_by{|x| freq[x]}
    end
  end
end
