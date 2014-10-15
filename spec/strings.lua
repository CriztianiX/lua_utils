return describe("strings tests", function()
  local util
  setup(function()
    util = require("../../Strings/util")
  end)
  teardown(function()
    util = nil
  end)
  it("running explode test", function()
    local result = util.explode("-", "Hello-World")
    return assert.are.same(result, {
      "Hello",
      "World"
    })
  end)
  return it("running implode test", function()
    local result = util.implode(" ", {
      "Hello",
      "World"
    })
    return assert.are.equal(result, "Hello World")
  end)
end)
