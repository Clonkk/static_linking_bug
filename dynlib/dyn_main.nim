proc add*(a, b: int): int {.cdecl, importc, dynlib: "./libfoo.so".}
proc sub*(a, b: int): int {.cdecl, importc, dynlib: "./libfoo.so".}

when isMainModule:
  echo add(10, 5)
  echo sub(10, 5)
