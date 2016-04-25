(ns word-count)

(defn words [phrase]
  (clojure.string/split phrase #"\s+"))

(defn clean [phrase]
  (clojure.string/replace phrase #"[^\w\s]" ""))

(defn word-count [sentence]
  (->> sentence
    (clean)
    (words)
    (map clojure.string/lower-case)
    (frequencies)
  )
)
