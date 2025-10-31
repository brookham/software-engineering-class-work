require "minitest/autorun"

#my code

class MathFunc

    def add(a, b)
        0
    end

    def divide(a, b)
        0
    end

    def sum_array(a)
        0
    end

end

class TestMath < Minitest::Test
    def setup
        @math = MathFunc.new
    end

    def test_add
        assert_equal 3, @math.add(1, 2)
    end

    def test_divide
        assert_equal 1, @math.divide(10, 10)
    end

    def test_sum_array
        assert_equal 10, @math.sum_array([1, 2, 3, 4])
    end

end

# Inherited code

class MathClass

  def add(a, b)
    a + b
  end

  def divide(a, b)
    a / b
  end

  def sum_array(a)
    sum = 0
    for num in a do
        sum += num
    
    end
    sum

  end

end



class TestMath < Minitest::Test
    def setup
      @math = MathClass.new
    end

    # Addition Tests
    def test_add_works
        assert_equal(6, @math.add(3, 3))
    end

    def test_add_with_negatives
        assert_equal(-2, @math.add(4, -6))
    end

    def test_adding_dec
        assert_equal(4.2, @math.add(2.1, 2.1))
    end

    # Division Tests
    def test_dividing_two_nums_works
        assert_equal(3, @math.divide(12, 4))
    end

    def test_divide_by_0_raises_error
        assert_raises(ZeroDivisionError) {@math.divide(2, 0)}
    end

    def test_quotient_with_remainder_returns_correct_float
        assert_equal(1, @math.divide(8, 5))
    end

    # Sumarray Tests
    def test_sum_array_works
        assert_equal(6, @math.sum_array([1, 2, 3]))
    end

    def test_empty_array_returns_0
        assert_equal(0, @math.sum_array([]))
    end
end