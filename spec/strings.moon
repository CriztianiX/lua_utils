describe "strings tests", ->
  local util

  setup () ->
    util = require("../../Strings/util")

  teardown () ->
    util = nil

  it "running explode test", ->
    result = util.explode("-", "Hello-World")
    assert.are.same result, { "Hello", "World" }

  it "running implode test", ->
    result = util.implode(" ", { "Hello", "World" })
    assert.are.equal result, "Hello World"