def make_list(start_ele, end_ele)
	list = []
	(start_ele..end_ele).each do |ele|
		list << ele
	end
	list
end

def my_sum(list)
	res = 0
	list.each {|e| res += e }
	res
end
####################################################
list = [1,2,3,5,4,7,8,9,10]
n = list.count + 1
ele = (1..n).sum - list.sum
p "missing element is: #{ele}" 
ele = (n*(n+1)/2) - my_sum(list)
p "missing element is: #{ele}"

#####################################################

list1 = [4,5,6,8,9,10]
start_ele = list1[0]
end_ele = list1.last()
ele = make_list(start_ele, end_ele) - list1
p "missing element is: #{ele}"
