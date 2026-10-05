(defun autmomata (symbl lambda &optional memory)
    (print symbl)
    (cond 
    ((null symbl) memory)
    (t (autmomata (cdr symbl) lambda (funcall lambda (car symbl) memory)))))


(defun flip (symbl mem)
    (cond 
        ((eql symbl 1) (cons 0 mem))
        ((eql symbl 0) (cons 1 mem))))

(print (autmomata '(1 0 1) 'flip))