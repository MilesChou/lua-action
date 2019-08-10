workflow "Test the Lua Action" {
  on = "push"
  resolves = [
    "Test the Lua command",
    "Test the LuaRocks command"
  ]
}

action "Test the Lua command" {
  uses = "./"
  args = "lua -v"
}

action "Test the LuaRocks command" {
  uses = "./"
  args = "luarocks"
}
