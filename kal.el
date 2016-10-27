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

(defconst kal-emacs-min-version "24.3" "Minimum version of Emacs.")


(if (not (version<= kal-emacs-min-version emacs-version))
    (message (concat "Your version of Emacs (%s) is too old. "
                     "Kal-el requires Emacs version %d or above.")
             emacs-version kal-emacs-min-version)
  (load-file (concat (file-name-directory load-file-name) "core/kal-load-paths.el"))
  (require 'kal-load-paths)
  (require 'kal-gitter)
  ;; do everything startup
  )

(message (concat " DEBUG load-path ::: %s" ) load-path)

(provide 'kal)
