task foo ,"foo":
  var strCmd = "c "
  strCmd.add("--app:staticlib ")
  strCmd.add("--noMain:on ")
  strCmd.add("--verbosity:3 ")
  strCmd.add("--clearNimblePath --skipCfg --skipUserCfg --skipProjCfg --skipParentCfg ")
  strCmd.add("foo.nim")
  selfExec(strCmd)

task build, "build foo_main":
  fooTask()
  --verbosity:3
  --clearNimblePath
  --skipCfg
  --skipUserCfg
  --skipProjCfg
  --skipParentCfg
  setCommand("r")
