f = [212, 98.6, 32, -40, -459]

def farTocel(arr)
    arr.each {|i| puts ((i - 32) * 5/9).round(2) }     
end

farTocel(f)