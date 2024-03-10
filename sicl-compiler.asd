(defsystem "sicl-compiler"
  :version "0.0.1"
  :author "John Thingstad"
  :mailto "jpthing@online.no"
  :license "MIT"
  :depends-on (:alexandria)
  :components ((:module "src"
                :components
                ((:file "SSA")
		 (:file "main" :depends-on ("SSA")))))
  :description ""
  :in-order-to ((test-op (test-op "sicl-compiler/tests"))))

(defsystem "sicl-compiler/tests"
  :author "John Thingstad"
  :license "MIT"
  :depends-on ("sicl-compiler"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for sicl-compiler"
  :perform (test-op (op c) (symbol-call :rove :run c)))
