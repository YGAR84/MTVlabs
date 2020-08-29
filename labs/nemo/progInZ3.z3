(declare-const x Int)
(declare-const y Int)
(declare-const z Int)


(push)
( assert ( not ( => ( and ( and ( = y ( * x x)) ( or ( <= ( * ( - x 1) ( - x 1)) z) ( = x 0))) ( >= z 0)) ( => ( > y z) ( and ( <= ( * ( - x 1) ( - x 1)) z) ( > ( * ( + ( - x 1) 1) ( + ( - x 1) 1)) z))))))
(check-sat)
(get-model)
(pop)

(push)
( assert ( not ( => ( and ( and ( = y ( * x x)) ( or ( <= ( * ( - x 1) ( - x 1)) z) ( = x 0))) ( >= z 0)) ( => ( <= y z) ( and ( and ( = ( + y ( + x ( + x 3))) ( * ( + x 1) ( + x 1))) ( or ( <= ( * ( - ( + x 1) 1) ( - ( + x 1) 1)) z) ( = ( + x 1) 0))) ( >= z 0))))))
(check-sat)
(get-model)
(pop)

(push)
( assert ( not ( => ( >= z 0) ( and ( and ( = 0 ( * 0 0)) ( or ( <= ( * ( - 0 1) ( - 0 1)) z) ( = 0 0))) ( >= z 0)))))
(check-sat)
(get-model)
(pop)




(exit)