(defun funkcja ()
  (sbi PORTA 1)
  (nop)
  (nop)
  (cbi PORTA 1)
  (nop)
  (nop))

(sbi DDRA 1)
(main-loop
 (funckja))