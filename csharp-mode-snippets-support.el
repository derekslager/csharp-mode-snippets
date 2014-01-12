(defun get-current-type-name (type)
  (save-excursion
    ;; need to widen for proper expansion in yasnippet
    (save-restriction
      (widen)
      (beginning-of-buffer)
      (when (re-search-forward (concat type "\\s +\\(\\w+\\)") nil t)
        (match-string-no-properties 1)))))

(defun get-current-class-name ()
  (get-current-type-name "class"))

(defun get-current-enum-name ()
  (get-current-type-name "enum"))

(defun get-current-struct-name ()
  (get-current-type-name "struct"))

(defun guess-current-type-name ()
  (or (get-current-class-name)
      (get-current-enum-name)
      (get-current-struct-name)
      (if (ends-with (buffer-name) ".cs")
          (substring (buffer-name) 0 -3)
        (buffer-name))))

(provide 'csharp-mode-snippets-support)
