task foo, "foo":
  var strCmd = "../../Nim/bin/nim c "
  strCmd.add("--app:lib ")
  strCmd.add("--noMain:on ")
  strCmd.add("foo.nim")
  exec(strCmd)

# This works no need for more flags
task build, "build foo_main":
  fooTask()
  setCommand("r")

