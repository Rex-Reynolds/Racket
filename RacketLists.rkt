;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Homework) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;Rex Reynolds
;Scheme Assignment

; (countElement list) returns an int of the number of elements in a
; list... So (countElement (list 1 2 3) 3) is 3.

(define (countElement  lst elm)
  (if (null? lst)
      0
      (if (= (car lst) elm)
          (+ (countElement (cdr lst) elm) 1)
          (countElement (cdr lst) elm))))
             

;(removeElement list elm) returns the list with the selected element removed.

(define (removeElement lst elm)
  (if (null? lst)
      lst
      (if (= (car lst) elm)
          (removeElement (cdr lst) elm)
          (cons (car lst) (removeElement (cdr lst) elm)))))



; (intervalList number number)
; Make a list of consecutive integers from 2 to N.
; Declare the first element of the list a prime number.
(define (intervalList n)
  (if (= n 2)
     (list 2)                       
     (append (intervalList (- n 1)) (list n))))
  
  
  
       
       
       
; (seive list) need to use begin, display, and filter with a lambda
; Remove all multiples of that number from the rest of the list.
; Go to the next number remaining, and repeat from step 2.
 (define (sieve lst)
     (if (null? lst)
         (newline)
         (begin(display (car lst))(newline)(let ((v (car lst)))(sieve (filter (lambda (x)(not(= (remainder x v) 0))) lst))))))
 

  
