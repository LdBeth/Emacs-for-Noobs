
;;; 此配置文件只为新手初次体验Emacs，应放置在/Emacs/share/emacs/site-lisp/下面。
;;; 下面的配置最好只保留设置HOME项。

;; 设置HOME目录为Emacs程序下的子文件夹 "Home/"，利于便携化。
(defvar emacs-home (replace-regexp-in-string "share.*$" "HOME/" data-directory :from-end))
(unless (file-exists-p emacs-home)
  (make-directory emacs-home :parents))
(setenv "HOME" (concat emacs-home))


;;; 后面的配置可以用来体验Emacs做为强大编辑器的魅力。
;;; 持续更新中……

;; 下面是设置源，下载pacakge时免翻墙。
;; (require 'package)
;; (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
;;                          ("melpa" . "http://elpa.emacs-china.org/melpa/")))
;; (package-initialize)

;;; 安装use-package，用于管理package的配置。
;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))

;;; 自动安装包。举例：chinese-fonts-setup，用于设置字体
;; (use-package chinese-fonts-setup
;;   :ensure t   ;; 自动安装包
;;   :config
;;   ;; 让 chinese-fonts-setup 随着 emacs 自动生效。
;;   (chinese-fonts-setup-enable)
;;   ;; 让 spacemacs mode-line 中的 Unicode 图标正确显示。
;;   (cfs-set-spacemacs-fallback-fonts))
