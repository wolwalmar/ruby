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
