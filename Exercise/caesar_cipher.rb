require 'pry-byebug'

# def caesar_cipher(word, key)
#   #   binding.pry
#   #   string

#   # caesar_string = ""

#   #     string.scan (/./) do |i|
#   #       if ("a".."z").include? (i.downcase) # Identify letters only.
#   #         number.times {i = i.next}
#   #       end
#   #       caesar_string << i[-1]
#   #     end
#   #     return caesar_string
# end

def caesar_cipher(word, key, result = '')
  # caesar_string = ''

  # word.scan(/./) do |i|
  #   key.times { i = i.next } if ('a'..'z').include?(i.downcase) # Identify letters only.
  #   caesar_string << i[-1]
  # end
  # p caesar_string

  # word.each_char do |c|
  #   base = c.ord < 91 ? 65 : 97

  #   if c.ord.between?(65,95) or c.ord.between?(97,122)
  #    result += (((c.ord - base + key)% 26) + base).chr
  #   else
  #    result += c
  #   end
  # end
  # p result

  # word.each_char do |c|
  #   base = c.ord < 91 ? 65 : 97
  #   result += if c.ord.between?(65, 95) or c.ord.between?(97, 122)
  #               (((c.ord - base + key) % 26) + base).chr
  #             else
  #               c
  #             end
  # end
  # p result

  # for i in 0...word.length do
  #   base_code = word[i].ord

  #   (a, z) = case base_code
  #            when 97..122 then [97, 122]
  #            when 65..90 then [65, 90]
  #            else next
  #            end

  #   rotate = key > 0 ? 26 : -26

  #   base_code += key
  #   base_code -= rotate unless base_code.between?(a, z)

  #   word[i] = base_code.chr

  # end
  # p word

  # Split string into character array, get ascii value for each character
  # 65 - 90 for A-B
  # 97 - 122 for a-b

  result = word.chars.map do |c|
    # (c.ord + key).chr
    base_ord = c.ord

    # rotate = key > 0 ? 26 : -26

    case base_ord
    when 65..90
      if key.positive?
        (base_ord + key > 90 ? base_ord + key - 26 : base_ord + key).chr
      else
        (base_ord + key < 65 ? base_ord + key + 26 : base_ord + key).chr
      end
    when 97..122
      if key.positive?
        (base_ord + key > 122 ? base_ord + key - 26 : base_ord + key).chr
      else
        (base_ord + key < 97 ? base_ord + key + 26 : base_ord + key).chr
      end
    else
      c
    end

    # if base_ord.between?(65, 90)
    #   # p (c.ord + key).chr
    #   if key.positive?
    #     (base_ord + key > 90 ? base_ord + key - 26 : base_ord + key).chr
    #   else
    #     (base_ord + key < 65 ? base_ord + key + 26 : base_ord + key).chr
    #   end
    # elsif base_ord.between?(97, 122)
    #   # p (c.ord + key).chr
    #   if key.positive?
    #     (base_ord + key > 122 ? base_ord + key - 26 : base_ord + key).chr
    #   else
    #     (base_ord + key < 97 ? base_ord + key + 26 : base_ord + key).chr
    #   end
    # else
    #   c
    # end
  end
  result
  p result.join
end

caesar_cipher('What a string!', 5)
#=> "Bmfy f xywnsl!"
