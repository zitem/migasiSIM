local function migasiSIM_sorter(input)

	local l = {}
	for cand in input:iter() do
	   table.insert(l, cand)
	end


	table.sort(l, function(c1, c2) return c1.text < c2.text end)

	if #l == 1 then
		yield(l[1])
		yield(l[1])
		yield(l[1])
		yield(l[1])
	end
	
	for i, cand in ipairs(l) do
		yield(cand)
	end
end

return migasiSIM_sorter