describe "tables tests", ->
  local util

  setup () ->
    util = require("../../Tables/util")

  teardown () ->
    util = nil

  it "running in_table test: searching 'hello'", ->
    result = util.in_table("Hello", { "Hello", "World" })
    assert.are.equal result, 1
  it "running in_table test: searching 'goodbye'", ->
    result = util.in_table("goodbye", { "Hello", "World" })
    assert.are.equal result, false