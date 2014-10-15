local explode
explode = function(d, p)
  local t, ll
  t = { }
  ll = 0
  if (#p == 1) then
    return {
      p
    }
  end
  while true do
    local l = string.find(p, d, ll, true)
    if l ~= nil then
      table.insert(t, string.sub(p, ll, l - 1))
      ll = l + 1
    else
      table.insert(t, string.sub(p, ll))
      break
    end
  end
  return t
end
local implode
implode = function(glue, pieces)
  return table.concat(pieces, glue)
end
return {
  explode = explode,
  implode = implode
}
