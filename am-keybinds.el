;;; am-keybinds --- defines keybinds for convenience -*- lexical-binding: t; -*- 

;; Compile C++ code helper
(require 'cpp-compile)

;; Goto specific line (Alt-g)
(global-set-key (kbd "M-g") 'goto-line)

;; Find the next error (Alt-n)
(global-set-key (kbd "M-n") 'next-error)

;; Find previous error (Alt-Ctrl-n)
(global-set-key (kbd "M-C-n") 'previous-error)

;; Open compilation buffer (Ctrl-c 8)
(global-set-key (kbd "C-c 8") 'am-open-compilation-buffer)

;; Goto line
(global-set-key (kbd "C-M-'") 'goto-line)

;; Move between buffers (Ctrl-./,)
(global-set-key (kbd "C-.") 'other-window)
(global-set-key (kbd "C-,") 'am-back-window)

;; Ripgrep regex search (Alt-s)
(global-set-key (kbd "M-s") 'rg)

;; Hippie expand (Alt-/)
(global-set-key (kbd "M-/") 'hippie-expand)

;; Projectile find file (Alt-Ctrl-f)
(global-set-key (kbd "M-C-f") 'projectile-find-file)

;; Comment or uncomment line (Ctrl-])
(global-set-key (kbd "C-]") 'comment-line)

;; Insert region comment (Alt-])
(global-set-key (kbd "M-]") 'comment-region)

;; Insert documentation comment (Alt-Ctrl-k)
(global-set-key (kbd "M-C-k") 'am-insert-doc-comment)

;; Insert section comment (Alt-Ctrl-j)
(global-set-key (kbd "M-C-j") 'am-insert-section-comment)

;; Display electric buffer list (Ctrl-x l)
(global-set-key (kbd "C-x l") 'electric-buffer-list)

;; Change the current theme (Ctrl-c Ctrl-t)
(global-set-key (kbd "C-c C-t") 'am-change-theme)

;; Magit Status
(global-set-key (kbd "C-c s") 'magit-status)

;; Unbind transpose-chars, accidental presses causes problems!!!
(global-unset-key (kbd "C-t"))

;; Unbind kill-emacs, accidental key presses kills emacs!!!
(global-unset-key (kbd "C-x C-c"))

;; C++ specific key bindings
(add-hook 'c++-mode-hook
          (lambda ()

            ;; Build and run project (Alt-Ctrl-p)
            (local-set-key (kbd "M-C-p") 'cpp-build-and-run-default)

            ;; Kill the currently running program (Ctrl-c Ctrl-m)
            (local-set-key (kbd "C-c C-m") 'kill-compilation)

            ;; Generate project files (Alt-Ctrl-u)
            (local-set-key (kbd "M-C-u") 'cpp-generate-project)

            ;; Run the specific file (Alt-p)
            (local-set-key (kbd "M-p") 'cpp-compile-and-run-default)))

(provide 'am-keybinds)