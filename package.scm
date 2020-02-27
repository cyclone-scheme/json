(package
  (name json)
  (version 0.1)
  (license "BSD")
  (authors "LShift Ltd. <query at lshift dot net> ,Tony Garnock-Jones <tonyg at kcbbs dot gen dot nz>")
  (maintainers "Arthur Maciel <arthurmaciel at gmail dot com>")
  (description "JSON parser library")
  (tags "language extesions")
  (docs "https://github.com/cyclone-scheme/cyclone-winds/wiki/json")
  (test "test.scm")
  (dependencies (cyclone packrat))
  (test-dependencies ())
  (foreign-dependencies ())
  (library
    (name (cyclone json))
    (description "JSON parser library")))