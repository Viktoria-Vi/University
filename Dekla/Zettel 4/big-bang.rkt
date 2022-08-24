;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname big-bang) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
; WorldState is a number
; interp. the countdown when the bomb explodes

; WorldState -> WorldState
; reduces countdown by one whenever a clock tick occurs
(check-expect (on-tick-event 42) 41)

(define (on-tick-event world) (- world 1))

; WorldState Number Number MouseEvent -> WorldState
; decreases countdown by 100 when mouse button is pressed
(check-expect (on-mouse-event 300 12 27 "button-down") 200)
(check-expect (on-mouse-event 300 12 27 "button-up") 300)

(define (on-mouse-event world mouse-x mouse-y mouse-event)
  (if (string=? mouse-event "button-down")
      (- world 100)
      world))

; WorldState -> Image
; renders the current countdown t as an image
(check-expect (image? (render 100)) true)
(check-expect (image? (render 0)) true)

(define (render world)
  (if (> world 0)
      (above (text (string-append "Countdown for the bomb: "
                                  (number->string world))
                   30 "red")
             (text "Click to disarm!" 30 "red"))
      (text "Boooom!!" 60 "red")))

; WorldState -> Boolean
; the program is over when the countdown is <= 0
(check-expect (end-of-the-world 42) false)
(check-expect (end-of-the-world 0) true)

(define (end-of-the-world world) (<= world 0))

; install all event handlers; initialize world state to 500
(big-bang 500
          (on-tick on-tick-event 0.1)
          (on-mouse on-mouse-event)
          (to-draw render)
          (stop-when end-of-the-world))
