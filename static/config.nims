task foo ,"foo":
  var strCmd = "../../Nim/bin/nim c "
  strCmd.add("--app:staticlib ")
  strCmd.add("--noMain:on ")
  strCmd.add("-d:nimLinkerWeakSymbols ")
  # strCmd.add("--verbosity:3 ")
  strCmd.add("--clearNimblePath --skipCfg --skipUserCfg --skipProjCfg --skipParentCfg ")
  strCmd.add("foo.nim")
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  echo strCmd
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  exec(strCmd)

task build, "build foo_main":
  fooTask()
  var strCmd = "../../Nim/bin/nim c "
  # --verbosity:3
  # strCmd.add("--clearNimblePath --skipCfg --skipUserCfg --skipProjCfg --skipParentCfg ")
  strCmd.add("-r ")
  strCmd.add("-d:nimLinkerWeakSymbols ")
  strCmd.add("static_main.nim")
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  echo strCmd
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  exec(strCmd)
