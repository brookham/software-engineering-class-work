nums = [4, 2, 16, 5, 19, 5, 6, 2, 3, 5, 15, 4, 6, 10, 13, 1, 18, 6, 9, 10, 9,
12, 6, 9, 11, 18, 16, 18, 4, 9, 15, 7, 20, 12, 1, 4, 20, 17, 6, 12, 20,
19, 13, 10, 10, 7, 8, 2, 18, 20, 1, 7, 17, 3, 8, 10, 7, 1, 15, 7, 3, 13,
14, 12, 19, 13, 7, 17, 2, 14, 3, 17, 5, 12, 16, 6, 10, 15, 8, 2, 7, 1,
18, 16, 17, 12, 7, 14, 10, 17, 12, 19, 2, 20, 16, 7, 20, 16, 5, 7]

sum = nums.sum().to_f

avg = sum.to_f/nums.length

odd_count = 0

odd_adj_count = 0

for i in 0...nums.length do
    if nums[i] % 2 == 1
        if nums[i - 1] % 2 == 1
            odd_adj_count += 1
        end
        odd_count += 1
    end
end

final_sum = sum + avg + odd_adj_count + odd_adj_count

puts final_sum