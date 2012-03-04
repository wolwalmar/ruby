require 'test/unit'

require './combine_anagram'

class TestCombineAnagram < Test::Unit::TestCase
	def test_empty_input
		assert_equal [],combine_anagrams([])
	end 

	def test_one_word_input
		l = ["car"]
		assert_equal [l],combine_anagrams(l)
	end

	def test_two_word_input_positive
		assert_equal [['car','arc']].map { |l| l.sort }, combine_anagrams(["arc","car"])
	end  
	def test_two_word_input_negative
		assert_equal [['car'],['ruby']], combine_anagrams(["ruby","car"]).sort
	end  

	def test_tree_word_input_2_to_1
		assert_equal [['car','arc'],['ruby']], combine_anagrams(["ruby","car","arc"]).sort
	end  

	def test_some_words
		assert_equal [['cars','racs','scar'],['creams','scream'], ["for"],["four"],["potatoes"]], 
						combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']).sort
	end

	def test_tree_word_input_with_capitals_2_to_1
		assert_equal [['Car','Arc'],['Ruby']], combine_anagrams(["Ruby","Car","Arc"]).sort
	end  
 
end
