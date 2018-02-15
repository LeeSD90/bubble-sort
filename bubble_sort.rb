def bubble_sort(arg)
	again = true
	while again
		again = false
		i = 0
		while i < (arg.length-1)
			if arg[i] > arg[i+1]
				arg[i], arg[i+1] = arg[i+1], arg[i]
				again = true
			end
			i+=1
		end
	end
	return arg
end

def bubble_sort_by(arg)
	again = true
	while again
		again = false
		i = 0
		while i < (arg.length-1)
			if yield(arg[i], arg[i+1]) > 1
				arg[i], arg[i+1] = arg[i+1], arg[i]
				again = true
			end
			i+=1
		end
	end
	return arg
end

print bubble_sort([1,8,82,-1,0,-32,2,3,1])
print bubble_sort_by(["hi","hello","hey"]) { |left,right|
  left.length - right.length
}