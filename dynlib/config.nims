import os

task foo, "foo":
  var strCmd = "c "
  strCmd.add("--app:lib ")
  strCmd.add("--noMain:on ")
  strCmd.add("foo.nim")
  selfExec(strCmd)

# This works no need for more flags
task build, "build foo_main":
  fooTask()
  setCommand("r")

