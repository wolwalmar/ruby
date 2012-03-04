def count_words(string)
  if string.empty?
    {}
  else
    words=string.
      downcase.
      split(/\b/).
      reject { | w | (w =~ /^\w+$/)==nil }
    Hash[words.uniq.map {|word| [word,words.count(word)]}]
  end
end

def palindrome?(string)
	prepare(string) == prepare(string).reverse
end

def prepare(string)
	string.downcase.gsub(/\W/,'')
end
