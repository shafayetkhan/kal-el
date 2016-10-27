;; Kal-el
;;
;; Copyright (c) 2016 Shafayet Khan & Contributors
;;
;; Author: Shafayet Khan <shafayetkhan@gmail.com>
;; URL: http://www.shafayet.com
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


(require 'cl)

(defun kal-add-subdirs-to-load-path (parent-dir)
  "Adds every non-hidden subdir of PARENT_DIR to `load-path'."
  (let* ((default-directory parent-dir))
    (progn
      (setq load-path
            (append
             (remove-if-not
              (lambda (dir) (file-directory-p dir))
              (directory-files (expand-file-name parent-dir) t "^[^\\.]"))
             load-path)))))

(kal-add-subdirs-to-load-path
 (expand-file-name "../" (file-name-directory load-file-name)))

;; temporary config to work with spacemacs layers
(kal-add-subdirs-to-load-path
 (expand-file-name "../lib/" (file-name-directory load-file-name)))

(provide 'kal-load-paths)
