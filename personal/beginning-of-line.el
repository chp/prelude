(defun even-smarter-move-beginning-of-line (arg)
  "Same as smarter-move-begging-of-line, but default to beginning of line."
  (interactive "^p")
  (setq arg (or arg 1))

  ;; Move lines first
  (when (/= arg 1)
    (let ((line-move-visual nil))
      (forward-line (1- arg))))

  (let ((orig-point (point)))
    (move-beginning-of-line 1)
    (when (= orig-point (point))
      (back-to-indentation))))

(global-set-key [remap move-beginning-of-line]
                'even-smarter-move-beginning-of-line)
