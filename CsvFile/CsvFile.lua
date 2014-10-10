local CsvFile
do
  local _base_0 = {
    write = function(self, data)
      local res, msg = self.file:write(self:tocsv(data, self.separator), "\n")
      if res then
        return 
      end
      return error(msg)
    end,
    raw_write = function(self, data)
      local res, msg = self.file:write(data)
      if res then
        return 
      end
      return error(msg)
    end,
    close = function(self)
      return self.file:close()
    end,
    escapeCsv = function(self, s, sep)
      if sep == nil then
        sep = ","
      end
      if string.find(s, '["' .. sep .. ']') then
        s = '"' .. string.gsub(s, '"', '""') .. '"'
      end
      return s
    end,
    tocsv = function(self, t, sep)
      if sep == nil then
        sep = ","
      end
      local s = ''
      for _, p in pairs(t) do
        s = s .. sep .. self:escapeCsv(p, sep)
      end
      return string.sub(s, 2)
    end
  }
  _base_0.__index = _base_0
  local _class_0 = setmetatable({
    __init = function(self, filepath, mode)
      self.file = assert(io.open(filepath, mode))
    end,
    __base = _base_0,
    __name = "CsvFile"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  local self = _class_0
  self.file = nil
  self.separetor = ","
  CsvFile = _class_0
  return _class_0
end
