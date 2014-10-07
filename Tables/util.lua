local in_table
in_table = function(e, table)
  for _, v in pairs(table) do
    if (v == e) then
      return _
    end
  end
  return false
end
return {
  in_table = in_table
}
