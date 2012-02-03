#lang racket/gui
(require "taskcontrol.rkt")

(require framework)
(define frame 
  (new frame% 
       [label "ϗ Actual productivity tool ϗ"]
       [width 300]
       [height 300]))

(new canvas% [parent frame]
     [paint-callback
      (lambda (canvas dc)
        (send dc set-scale 3 3)
        (send dc set-text-foreground "blue")
        (send dc draw-text "Don't Panic!" 0 0))])

(define clickMe 
  (new button% 
       [label "A Freshie Sir?"]
       [parent frame]
       [callback (lambda (b e)
                   ( (BuildControl frame)))]))

(define Show 
  (send frame show #t))

(provide Show)  