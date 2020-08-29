(declare-const n Int)
(declare-const x Int)
(declare-const y Int)



(push)
(assert (not (=> (and (= y (* x x)) (<= (* (- x 1) (- x 1)) n)) (=> (> y n) (and (<= (* (- x 1) (- x 1)) n) (> (* (+ (- x 1) 1) (+ (- x 1) 1)) n))))))
(check-sat)
(pop)

(push)
(assert (not (=> (and (= y (* x x)) (<= (* (- x 1) (- x 1)) n)) (=> (<= y n) (and (= (+ y (+ x (+ x 1))) (* (+ x 1) (+ x 1))) (<= (* (- (+ x 1) 1) (- (+ x 1) 1)) n))))))
(check-sat)
(pop)
(push)
(assert (not (=> (>= n 1) (and (= 1 (* 1 1)) (<= (* (- 1 1) (- 1 1)) n)))))
(check-sat)
(pop)

