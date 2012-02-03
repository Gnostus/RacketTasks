#lang racket/gui

(require framework)
(define BuildControl
  (lambda (parent) 
    (define panel 
      (new horizontal-panel%
                       [parent parent]
                       [alignment '(center center)]))
    (define textBox 
      (new text-field%
           [label "ToDo"]	 
           [parent panel]	 
           [callback (lambda(b e)
                       (void))]	 
           [init-value "Another Day"]))
      (new button%
           [label "DONE"]
           [parent panel]
           [callback (lambda(b e)
                       (send textBox set-field-background
                             (send the-color-database find-color "green")))])))
(provide BuildControl)
