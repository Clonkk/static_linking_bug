proc add(a, b: int): int {.cdecl, exportc, dynlib.} =
  a + b
proc sub(a, b: int): int {.cdecl, exportc, dynlib.} =
  a - b
