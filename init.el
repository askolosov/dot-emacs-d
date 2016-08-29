;;; init.el --- Where all the magic begins
;;
;; Part of Alexander Kolosov's Emacs configuration (based on Emacs Starter Kit)
;;
;; This is the first thing to get loaded.
;;

(package-initialize)

;; load the starter kit from the `after-init-hook' so all packages are loaded
(add-hook 'after-init-hook
 `(lambda ()
    ;; remember this directory
    (setq starter-kit-dir
          ,(file-name-directory (or load-file-name (buffer-file-name))))
    ;; load up the Emacs config
    (require 'org)
    (org-babel-load-file (expand-file-name "kas-emacs.org" starter-kit-dir))))

;;; init.el ends here
(put 'dired-find-alternate-file 'disabled nil)
(put 'downcase-region 'disabled nil)
