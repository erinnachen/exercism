(ns rna-transcription)

(def mapping { \G \C
               \C \G
               \T \A
               \A \U
})

(defn to-rna [sequence]
  (assert (every? mapping sequence))
  (apply str (map mapping sequence))
)
