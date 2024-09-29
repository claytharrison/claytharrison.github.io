;;; org-static-blog-config-vars.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2024 Clay Harrison
;;
;; Author: Clay Harrison <claytharrison@gmail.com>
;; Maintainer: Clay Harrison <claytharrison@gmail.com>
;; Created: September 29, 2024
;; Modified: September 29, 2024
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/cth/org-static-blog-config-vars
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:
(require 'org-static-blog)
(defun org-static-blog-config-vars-setup (blog-dir &optional domain-name)
  (setq org-static-blog-publish-title "clay harrison's blog")
  (setq org-static-blog-publish-url domain-name) 
  (setq org-static-blog-publish-directory (file-name-as-directory blog-dir))
  (setq org-static-blog-posts-directory (concat (file-name-as-directory blog-dir) "posts/"))
  (setq org-static-blog-drafts-directory (concat (file-name-as-directory blog-dir) "drafts/"))
  (setq org-static-blog-enable-tags t)
  (setq org-export-with-toc nil)
  (setq org-export-with-section-numbers nil)
  
  ;; This header is inserted into the <head> section of every page:
  ;;   (you will need to create the style sheet at
  ;;    ~/projects/blog/static/style.css
  ;;    and the favicon at
  ;;    ~/projects/blog/static/favicon.ico)
  (setq org-static-blog-page-header
        "<meta name=\"author\" content=\"Clay Harrison\">
  <meta name=\"referrer\" content=\"no-referrer\">
  <meta name=\"viewport\" content=\"initial-scale=1,width=device-width,minimum-scale=1\">
  <link href= \"static/style.css\" rel=\"stylesheet\" type=\"text/css\" />
  <link rel=\"icon\" href=\"static/favicon.ico\">")
  
  ;; This preamble is inserted at the beginning of the <body> of every page:
  ;;   This particular HTML creates a <div> with a simple linked headline
  (setq org-static-blog-page-preamble
        (concat
        "<div class=\"header\">"
  "<a href=\""
  domain-name
  "\">Clay Harris(on-line)</a>"
  "</div>"))
  
  ;; This postamble is inserted at the end of the <body> of every page:
  ;;   This particular HTML creates a <div> with a link to the archive page
  ;;   and a licensing stub.
  (setq org-static-blog-page-postamble
        (concat
         "<div id=\"archive\">"
                "<a href=\""
                domain-name
                "/archive.html"
                "\">Other posts</a>"
         "</div>"
         "<center>"
         "<a rel=\"license\" href=\"https://creativecommons.org/licenses/by-sa/3.0/\">"
                "<img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/3.0/88x31.png\" />"
         "</a>"
         "<br />"
         "<span xmlns:dct=\"https://purl.org/dc/terms/\" href=\"https://purl.org/dc/dcmitype/Text\" property=\"dct:title\" rel=\"dct:type\">"
                domain-name
         "</span>"
         "by"
         "<a xmlns:cc=\"https://creativecommons.org/ns#\" href=\""
         domain-name "\""
         "property=\"cc:attributionName\" rel=\"cc:attributionURL\">"
         "Clay Harrison"
         "</a>"
         "is licensed under a"
         "<a rel=\"license\" href=\"https://creativecommons.org/licenses/by-sa/3.0/\">"
         "Creative Commons Attribution-ShareAlike 3.0 Unported License"
         "</a>"
         "."
         "</center>"))
  
  ;; This HTML code is inserted into the index page between the preamble and
  ;;   the blog posts
  (setq org-static-blog-index-front-matter
        "<h1> Clay Harrison </h1>\nGeosciences, emacs, livecoding, lute, and more?"))


(provide 'org-static-blog-config-vars)
;;; org-static-blog-config-vars.el ends here
