--
-- Write a function that takes an arbitrary number of values and returns all of them, except
-- the first one.
--

function skip_first (...)
	local t = table.pack(...)
	return table.unpack(t, 2, #t)
end

print(skip_first(1,2,3,4))
