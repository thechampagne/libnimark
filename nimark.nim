import nmark

proc malloc(_: csize_t): pointer {.importc.}
proc NimMain() {.importc.}

proc nimark_init() {.exportc.} =
  NimMain()

proc nimark_markdown(lines: cstring): ptr cchar {.exportc.} =
  let md = markdown($lines)
  let str = cast[ptr cchar](malloc(csize_t(md.len + 1)))
  copyMem(str, cstring(md), md.len + 1)
  return str
