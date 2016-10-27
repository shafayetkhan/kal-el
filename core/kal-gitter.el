;; Gitter
;; Responsible for doing REST calls and interacting with an API
;;
;; Copyright (c) 2016 Shafayet Khan & Contributors
;;
;; Author: Shafayet Khan <shafayetkhan@gmail.com>
;; URL: http://www.shafayet.com
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(require 'request)
(require 'request-deferred)

(message "Loaded gitter.el")

(defun kal-gitter-function-1 ()
  "This is just a test function"
  (interactive)
  (message "Just ran the tester function"))

(provide 'kal-gitter)
