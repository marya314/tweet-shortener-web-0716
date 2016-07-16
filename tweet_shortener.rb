require 'pry'
def dictionary


{
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}

end

def word_substituter(string)

  new_array = string.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
new_array.join(" ")
end


def bulk_tweet_shortener(array)
  array.collect do |string|
    puts word_substituter(string)
end
end

def selective_tweet_shortener(string)
  if string.length < 140
     string
  else
    word_substituter(string)
end
end

def shortened_tweet_truncator(string)
  tweet = word_substituter(string)
  if tweet.length > 140
    short_tweet = tweet[0..136] + "..."
    short_tweet
  else
    tweet
  end

end
