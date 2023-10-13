--
-- Write a function that takes an array and prints all its elements.
--
function print_all(t)
	for _, v in ipairs(t) do
		print(v)
	end
end

print_all({"one", "two", "three"})
