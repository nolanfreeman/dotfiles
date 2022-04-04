;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Nolan Freeman Abbott"
      user-mail-address "nolan@freemanabbott.com")

(setq doom-theme 'doom-one)

(setq org-directory "~/Documents/notes/")

(setq display-line-numbers-type 'relative)

;;
;; org-roam
;;
(after! org-roam
        :ensure t
        :init
        (setq org-roam-v2-ack t)
        :custom
        (setq org-roam-directory "~/Documents/org-roam")
        (setq org-roam-completion-everywhere t)
        (setq org-roam-graph-filetype "png")
        (setq org-roam-capture-templates
                `(("d" "default" plain "%?"
                        :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org"
                                           "#+title: ${title}\n#+filetags: ") :unnarrowed t)
                  ))
        (setq org-roam-db-autosync-mode t)
        (setq org-roam-node-display-template
                (concat "${title:*} " (propertize "${tags:24}" 'face 'org-tag)))
        :config
        (org-roam-setup)
)


(after! magit
  (use-package forge)
)

;;
;; Mapping Keys
;;
(map! :leader
      (:prefix-map ("n" . "notes")
       (:prefix ("r" . "roam")
         :desc "Toggle List Buffer" "l" #'org-roam-buffer-toggle
         :desc "Find Node" "f" #'org-roam-node-find
         :desc "Insert Node Here" "i" #'org-roam-node-insert
         :desc "Sync Database" "s" #'org-roam-db-sync
         :desc "Update ID Locations" "u" #'org-roam-update-org-id-locations
         :desc "Open Random Node" "*" #'org-roam-node-random
         :desc "Graph" "g" #'org-roam-graph
         (:prefix ("d" . "dailies")
           :desc "Capture Today" "d" #'org-roam-dailies-capture-today
           :desc "Capture Tomorrow" "t" #'org-roam-dailies-capture-tomorrow
           :desc "Capture Yesterday" "y" #'org-roam-dailies-capture-yesterday
           :desc "Capture Date" "x" #'org-roam-dailies-capture-date
           :desc "Go To Today" "D" #'org-roam-dailies-goto-today
           :desc "Go To Tomorrow" "T" #'org-roam-dailies-goto-tomorrow
           :desc "Go To Yesterday" "Y" #'org-roam-dailies-goto-yesterday
           :desc "Go To Next Note" "N" #'org-roam-dailies-goto-next-note
           :desc "Go To Date" "X" #'org-roam-dailies-goto-date
           :desc "Go To Previous Note" "P" #'org-roam-dailies-goto-previous-note
))))

;;
;; org-ref
;;
(setq org-ref-pdf-directory "~/Documents/resources/pdfs/")
(setq org-ref-default-bibliography "~/Documents/resources/references.bib")

;;
;; calibredb
;;


;; disable evil mode in calibredb-mode
(evil-set-initial-state 'calibredb-search-mode 'emacs)

;; MACOS ???
(setq calibredb-program "/Applications/calibre.app/Contents/MacOS/calibredb")
(setq calibredb-root-dir "~/Documents/books/")
(setq calibredb-db-dir (expand-file-name "metadata.db" calibredb-root-dir))
(setq calibredb-library-alist '( ; ("~/Media/Books")
                                ("~/Documents/books")))

(setq calibredb-id-width 4)
(setq calibredb-size-show t)
;; slowing down
;; (setq calibredb-format-all-the-icons t)

;; support for org ref
;; NOT WORKING
;; (setq calibredb-ref-default-bibliography (concat (file-name-as-directory calibredb-root-dir) "catalog.bib"))
;; (add-to-list 'org-ref-default-bibliography calibredb-ref-default-bibliography)
;; (setq org-ref-get-pdf-filename-function 'org-ref-get-mendeley-filename)

;;
;; org-mode
;;
(after! org

        (setq org-agenda-files '("~/Documents/agenda/"))

        ;; -- Supply multiple items from wildcards
        ;; -- doesn't dynamically check for new ones unless doom/sync
        ;; (append '("~/Projects/master.org")
        ;;       (file-expand-wildcards "~/Projects/*/agenda.org")
        ;;       ))

        (add-to-list 'org-modules 'org-habit t)

        (setq org-agenda-custom-commands
        '(("p" "Agenda and all PROG tasks"
                ((agenda "")
                (todo "PROG")))))

        (setq org-todo-keywords '((sequence "TODO(t)" "IDEA(i)" "STRT(s)" "PROG(p)" "NEXT(n)" "LATR(l)" "URGT(u)" "HOLD(h)" "ONGO(o)" "|" "DONE(d!)" "CANC(c)" "ARXV(a)" "REDO(r)")))

        (setq org-todo-keyword-faces
                '(("TODO" . org-warning)
                  ("IDEA" . "white")
                  ("STRT" . "yellow")
                  ("PROG" . "cyan")
                  ("NEXT" . "lime")
                  ("LATR" . "royalblue")
                  ("URGT" . "red")
                  ("HOLD" . "magenta")
                  ("ONGO" . "orange")
                  ("CANC" . org-done)
                  ("ARXV" . org-done)
                  ("REDO" . org-done)))

        (setq org-log-done 'time)
)

;;
;; other things
;;

;; open *.h header files in C++ mode by default (not C mode)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

