def caesar_cipher( word, key)

  new_word = []
  word.each_char do |x|
    if isAlpha(x)
      tmp = ( x.ord + key ).chr
      if isLowCase(x)
        if tmp >= "z"
          tmp = ((tmp.ord - "z".ord - 1 ) + "a".ord).chr
        end
      else
        if tmp >= "Z"
          tmp = ((tmp.ord - "Z".ord - 1) + "A".ord).chr
        end
      end
    else
      tmp = x
    end

    new_word.push(tmp)
  end

  return new_word.join("")
end

def isAlpha(char)
  char.match(/^[a-zA-Z]/)
end

def isLowCase(char)
  char.match(/^[a-z]/)
end
