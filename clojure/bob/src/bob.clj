(ns bob
  (:require [clojure.string :refer :all]))

(defn shouting? [message]
  (and (= message (upper-case message)) (re-find #"[a-zA-z]" message))
)

(defn response-for [message]
  (cond
    (empty? (trim message)) "Fine. Be that way!"
    (shouting? message) "Whoa, chill out!"
    (ends-with? message "?") "Sure."
    :else "Whatever."
  )
)
