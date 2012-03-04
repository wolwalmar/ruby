require 'test/unit'

require './accessorwithhistory'

class TestAccessorWithHistory < Test::Unit::TestCase
	def test_basic
		f = Foo.new
		f.bar = 1
		assert_equal 1, f.bar
	end
	def test_empty_history
		f = Foo.new
		assert_equal nil, f.bar_history
	end
	def test_history_after_one_assignment
		f = Foo.new
		f.bar = 1
		assert_equal [nil,1], f.bar_history
	end
	def test_history_after_two_assignments
		f = Foo.new
		f.bar = 1
		f.bar = "hello"
		assert_equal [nil,1,"hello"], f.bar_history
	end
	def test_history_for_two_vals
		f = Foo.new
		g = Foo.new
		f.bar = 1
		f.bar = "hello"
		g.bar = "Toll"

		assert_equal [nil,1,"hello"], f.bar_history
		assert_equal [nil,"Toll"], g.bar_history
	end

end
