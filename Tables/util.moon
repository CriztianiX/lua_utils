in_table = (e, table)->
    for _,v in pairs(table) do
        if (v==e) then return _

    return false

table_key_exists = (key, table) ->
  return table[key] ~= nil

{ :in_table, :table_key_exists }
