require 'test/unit'

require 'dessert'

class TestDessert < Test::Unit::TestCase
	def test_init
		a = Dessert.new("Pudding", 450)
		assert_equal "Pudding", a.name
		assert_equal 450, a.calories
	end

	def test_healthy_negative
		a = Dessert.new("Pudding", 450)
		assert ! a.healthy?
	end	

	def test_healthy_positive
		a = Dessert.new("Pudding", 199)
		assert a.healthy?
	end	

	def test_delicious
		assert Dessert.new("Pudding", 199).delicious?
	end

	def test_JellyBean
		jb = JellyBean.new("JellyBean", 199, "raspberry")
		assert_equal "JellyBean",jb.name
		assert_equal 199,jb.calories
		assert_equal "raspberry", jb.flavor
	end

	def test_jellybean_delicious_black_licorice
		assert ! JellyBean.new("JellyBean", 199, "black licorice").delicious?
	end

	def test_jellybean_delicious_other
		assert JellyBean.new("JellyBean", 199, "raspberry").delicious?
	end

end
