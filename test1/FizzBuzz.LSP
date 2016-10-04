(setq i 0)
(repeat 100
  (setq i (+ 1 i))
  (if
    (and
      (= (/ i 3)(/ i 3.0))(= (/ i 5)(/ i 5.0)))
    ;_THEN
    (princ "FizzBuzz\n")
    ;_ELSE
    (if
      (not
	(or
	  (if (= (/ i 3) (/ i 3.0))  (princ "Fizz\n"))
	  (if (= (/ i 5) (/ i 5.0))  (princ "Buzz\n")))) 
      ;_THEN
      (progn
      	(princ i)
      	(princ "\n")
     );_progn
   );_if
  );_if
);_repeat
(princ)