(import (scheme base)
        (cyclone test)
        (cyclone json))

(define (run-tests)
  (test-begin "JSON")

  (test 3 (json->scm "3"))
  (test "3" (scm->json 3))
  (test (list 1 2 3) (json->scm "[1, 2, 3]"))
  (test "[1, 2, 3]" (scm->json (list 1 2 3)))
  (test #f (json->scm "false"))
  (test "false" (scm->json #f))
  (test #t (json->scm "true"))
  (test "true" (scm->json #t))
  (test (vector (cons "a" 4) (cons "b" 5) (cons "c" 6))
	(json->scm "{\"a\": 4, \"b\": 5, \"c\": 6}"))
  (test "{\"a\": 4, \"b\": 5, \"c\": 6}"
	(scm->json (vector (cons "a" 4) (cons "b" 5) (cons "c" 6))))
  
  (test-assert (and (symbol? (json-read (open-input-string "null")))
                    (eq? 'null (json-read (open-input-string "null")))))

  (test 'null (json->scm "null"))
  (test "\"null\"" (scm->json 'null))

  (test-error (json-write (vector 4 5 6)))
  (test-error (json-write (vector (list 4 'a))))
  
  (test-end))

(run-tests)
  
