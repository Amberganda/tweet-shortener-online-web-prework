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
    words_array = string.split(" ")
    words_array = words_array.collect do |word|
        lowercased_word = word.downcase
        if dictionary.keys.include?(lowercased_word)
            dictionary[lowercased_word]
        else
            word
        end

    end
    words_array.join(" ")
end

def bulk_tweet_shortener(array)
    array.each do |tweet|
        puts word_substituter(tweet)

    end

end

def selective_tweet_shortener(length)

end
