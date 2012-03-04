require 'test/unit'

require './wordcount'

class TestAss < Test::Unit::TestCase
  def test_empty_string
    assert_equal 0,count_words("").size
  end

  def test_one_word
    assert_equal 1,count_words("hello").size
    assert_equal 1,count_words("hello")["hello"]
  end
  def test_one_word_twice
    assert_equal 1,count_words("hello hello").size
    assert_equal 2,count_words("hello hello")["hello"]
    end
  def test_two_different_word
    assert_equal 2,count_words("hello world").size
    assert_equal 1,count_words("hello world")["hello"]
    assert_equal 1,count_words("hello world")["world"]
    end
  def test_same_word_upper_and_lower_case
    assert_equal 1,count_words("hello Hello").size
    assert_equal 2,count_words("hello Hello")["hello"]
    end
  def test_some_words
    t = "Doo bee doo bee doo"
    assert_equal 2,count_words(t).size
    assert_equal 3,count_words(t)["doo"]
    end
  def test_some_words_with_special_chars
    t = "A man, a plan, a canal -- Panama"
    assert_equal 5,count_words(t).size
    assert_equal 3,count_words(t)["a"]
    assert_equal 1,count_words(t)["plan"]
    end
  def test_special_chars_only
    t = ",;; ;;,,? ?? =)("
    assert_equal 0,count_words(t).size
    end

  def test_palindrome_empty_string
    assert palindrome?("")
  end

  def test_palindrome_one_word
    assert palindrome?("Otto")
  end

  def test_palindrome_one_word_negative
    assert ! palindrome?("mus")
  end

  def test_multiple_words_with_special_chars
      assert palindrome?("Madam, I'm Adam!")
  end

  def test_multiple_words_with_special_chars_negative
      assert ! palindrome?("Madam, you're Adam!")
  end
end

