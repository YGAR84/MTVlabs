(declare-const x Int)
(declare-const y Int)
(declare-const z ( Array Int Int ))
(declare-const k Int)

( assert ( not ( => ( and ( and ( and ( = x 10) ( = ( select z 0) 1)) ( = ( select z 1) 1)) ( forall k ( => ( and ( >= k 2) ( < k 3)) ( = ( select z k) ( + ( select z ( - k 1)) ( select z ( - k 2))))))) ( >= y x))))
( assert ( not ( => ( and ( and ( and ( = x 10) ( = ( select z 0) 1)) ( = ( select z 1) 1)) ( forall k ( => ( and ( >= k 2) ( < k 3)) ( = ( select z k) ( + ( select z ( - k 1)) ( select z ( - k 2))))))) ( < y x))))
( assert ( not ( => true ( and ( and ( and ( = 10 10) ( = ( select ( store ( store z 0 1) 1 1) 0) 1)) ( = ( select ( store ( store z 0 1) 1 1) 1) 1)) ( forall k ( => ( and ( >= k 2) ( < k 3)) ( = ( select ( store ( store z 0 1) 1 1) k) ( + ( select ( store ( store z 0 1) 1 1) ( - k 1)) ( select ( store ( store z 0 1) 1 1) ( - k 2))))))))))
(check-sat)
(get-model)
(push)
(check-sat)
(pop)
(exit)