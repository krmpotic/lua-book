--
-- Write a function that takes an arbitrary number of values and returns all of them, except
-- the last one.
--

function skip_last (...)
	local t = table.pack(...)
	return table.unpack(t, 1, #t-1)
end

print(skip_last(1,2,3,4))
