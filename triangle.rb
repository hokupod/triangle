class Triangle
  attr_reader :side_a, :side_b, :side_c, :sides

  def initialize(*args)
    @side_a, @side_b, @side_c = @sides = args.map(&:to_i)
    raise ArgumentError '三角形じゃないです＞＜' if sides.include?(0)
  end

  def shape
    return '正三角形ですね！' if equilateral?
    return '二等辺三角形ですね！' if isosceles?
    return '不等辺三角形ですね！' if unequal?
    '三角形じゃないです＞＜'
  end

  def equilateral?
    [side_a, side_b, side_c].uniq.one?
  end

  def isosceles?
    return false unless [side_a, side_b, side_c].uniq.count == 2
    return false if sides.min * 2 != sides.max
    true
  end

  def unequal?
    return false unless [side_a, side_b, side_c].uniq.count == 3
    sum_combinations = sides.combination(2).to_a.map { |combination| combination.inject(0, &:+) }
    sum_combinations.each do |sum_combination|
      return false if sides.include?(sum_combination)
    end
    true
  end
end
