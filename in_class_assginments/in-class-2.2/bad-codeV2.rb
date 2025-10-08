vowels = ['a', 'e', 'i', 'o', 'u']

string = "Hello"

l_string = string.downcase

vowel_count = 0

l_string.each_char do |i|
    if vowels.include?(i)
        vowel_count += 1
    end
end

puts vowel_count

string <<= " idiot"


another_vowel_count = 0

string.each_char do |i|
    if vowels.include?(i)
        another_vowel_count += 1
    end
end

puts another_vowel_count

new_string = ""

l_string.each_char do |i|
    if not vowels.include?(i)
        new_string <<= i
    end
end


new_string <<= "something"

another_another_vowel_count = 0

new_string.each_char do |i|
    if vowels.include?(i)
        another_another_vowel_count += 1
    end
end

puts another_another_vowel_count

new_new_string = ""

l_string.each_char do |i|
    if not vowels.include?(i)
        new_new_string <<= i
    end
end


another_another_another_vowel_count = 0

new_new_string.each_char do |i|
    if vowels.include?(i)
        another_another_vowel_count += 1
    end
end

puts another_another_another_vowel_count