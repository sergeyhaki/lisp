(defun tst-binary-three ( / p0 p1 p2 p3)
  (setq p0 (getpoint "\n”кажи первую точку:")) 	;сохран€ем в р0 координаты первой точки
  (setq p1 (getpoint "\n”кажи вторую точку:")) 	;сохран€ем в р1 координаты второй точки

  (vl-cmdf "_.line" p0 p1 "")			;рисуем корень дерева от р0 до р1


  (local-draw-tree p0 p1)
  (local-draw-tree p1 p2)
  (local-draw-tree p1 p3)

  ;local function local-draw-tree-l
  (defun local-draw-tree-l (p0 p1)

    (vl-cmdf "_.line" p1 				;рисуем веточку налево
      (setq p2
        (polar p1      
          (+ (angle p0 p1) (* pi 0.07))
          (* (distance p0 p1) 0.7)))
    "")  
  );_end defun local-draw-tree-l

  ;local function local-draw-tree-r
  (defun local-draw-tree-r (p0 p1)
    (vl-cmdf "_.line" p1 				;рисуем веточку направо
      (setq p3
        (polar p1      
          (- (angle p0 p1) (* pi 0.07))
          (* (distance p0 p1) 0.7)))
    "")  
  );_end defun local-draw-tree-r 


);_end defun

(tst-binary-three)