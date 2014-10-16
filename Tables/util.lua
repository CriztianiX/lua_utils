local in_table
in_table = function(e, table)
  for _, v in pairs(table) do
    if (v == e) then
      return _
    end
  end
  return false
end
local table_key_exists
table_key_exists = function(key, table)
  return table[key] ~= nil
end
return {
  in_table = in_table,
  table_key_exists = table_key_exists
}
