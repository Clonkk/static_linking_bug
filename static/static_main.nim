when defined(windows):
  {.passL:"foo.lib"}
else:
  {.passL:"libfoo.a".}

proc add*(a, b: int): int {.cdecl, importc.}
proc sub*(a, b: int): int {.cdecl, importc.}

when isMainModule:
  echo "#############################################"
  echo "#############################################"
  echo add(10, 5)
  echo sub(10, 5)
  echo "#############################################"
  echo "#############################################"
