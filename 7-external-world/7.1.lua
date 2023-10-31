#!/usr/bin/env lua

-- 7.1
-- Write a program that reads a text file and rewrites it with its lines sorted
-- in alphabetical order. When called with no arguments, it should read from
-- standard input and write to standard output. When called with one file-name
-- argument, it should read from that file and write to standard output. When
-- called with two file-name arguments, it should read from the first file and
-- write to the second.

if #arg == 0 then
elseif #arg == 1 then
	io.input(arg[1])
elseif #arg == 2 then
	io.input(arg[1])
	io.output(arg[2])
else
	io.stderr:write("usage: ", arg[0], " [input [output]]\n")
	os.exit(1)
end

t = {}
for line in io.lines() do
	t[#t + 1] = line
end

table.sort(t)

for _, s in ipairs(t) do
	io.write(s,"\n")
end

