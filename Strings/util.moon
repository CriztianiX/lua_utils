explode = (d,p) ->
  local t, ll
  t={}
  ll=0
  if(#p == 1) then return {p}
  while true
  	l=string.find(p,d,ll,true) -- find the next d in the string
  	if l~=nil then -- if "not not" found then..
    	table.insert(t, string.sub(p,ll,l-1)) -- Save it in our array.
    	ll=l+1 -- save just after where we found it for searching next time.
  	else
    	table.insert(t, string.sub(p,ll)) -- Save what's left in our array.
    	break -- Break at end, as it should be, according to the lua manual.
  
  return t

implode = (glue, pieces) ->
  return table.concat(pieces, glue)

{ :explode, :implode }