(defpackage sicl-compiler/tests/main
  (:use :cl
        :sicl-compiler
        :rove))
(in-package :sicl-compiler/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :sicl-compiler)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
