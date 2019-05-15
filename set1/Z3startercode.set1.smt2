;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  BEGIN HEADER  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(declare-const x Int)
(declare-const y Int)
(declare-const a1 Int)
(declare-const a2 Int)
(declare-const a3 Int)

(declare-const x-lt-zero Bool)
(declare-const y-lt-zero Bool)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  END HEADER  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;; START STUDENT CODE ;;;;;;;;;;;;;;;

(assert (= x-lt-zero (< x 0)))
(assert (= y-lt-zero (< y 0)))
(assert (= a1 (* -1 x)))
(assert (= a2 (* -1 y)))
(assert (= a3 (+ a1 a2)))

(push)
(echo "Mutant1")
(assert (not (= a3 (- a1 a2)))) ;; Mutant1
(check-sat)
(pop)

(push)
(echo "Mutant2")
(assert (not (= a3 (* a1 a2)))) ;; Mutant2
(check-sat)
(pop)

(push)
(echo "Mutant3")
(assert (not (= y-lt-zero (= y 0)))) ;; Mutant3
(check-sat)
(pop)

(push)
(echo "Mutant4")
(assert (not (= y-lt-zero (<= y 0)))) ;; Mutant4
(check-sat)
(pop)

;;;;;;;;;;;;;;;;; END STUDENT CODE ;;;;;;;;;;;;;;;