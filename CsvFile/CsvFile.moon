class CsvFile
  @file: nil
  @separetor: ","

  new: (filepath, mode) =>
    @file = assert(io.open(filepath, mode))

  write: (data) =>
    res, msg = @file\write(@tocsv(data, @separator),"\n")
    if res then return
    error(msg)

  close: () =>
    return @file\close!

  escapeCsv: (s, sep = ",") =>
     if string.find(s, '["' .. sep .. ']') then
        s = '"' .. string.gsub(s, '"', '""') .. '"'
     return s

  tocsv: (t, sep = ",") =>
    s = ''
    for _,p in pairs(t) do
     s = s .. sep .. @escapeCsv(p, sep)

    return string.sub(s, 2)