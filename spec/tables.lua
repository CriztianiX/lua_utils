return describe("tables tests", function()
  local util
  setup(function()
    util = require("../../Tables/util")
  end)
  teardown(function()
    util = nil
  end)
  it("running in_table test: searching 'hello'", function()
    local result = util.in_table("Hello", {
      "Hello",
      "World"
    })
    return assert.are.equal(result, 1)
  end)
  return it("running in_table test: searching 'goodbye'", function()
    local result = util.in_table("goodbye", {
      "Hello",
      "World"
    })
    return assert.are.equal(result, false)
  end)
end)
