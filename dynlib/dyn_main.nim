when defined(windows):
  const libfoo = "foo.dll"
else:
  const libfoo = "./libfoo.so"

proc add*(a, b: int): int {.cdecl, importc, dynlib: libfoo.}
proc sub*(a, b: int): int {.cdecl, importc, dynlib: libfoo.}

when isMainModule:
  echo add(10, 5)
  echo sub(10, 5)
