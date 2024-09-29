;;; build.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2024 Clay Harrison
;;
;; Author: Clay Harrison <claytharrison@gmail.com>
;; Maintainer: Clay Harrison <claytharrison@gmail.com>
;; Created: September 29, 2024
;; Modified: September 29, 2024
;; Version: 0.0.1
;; Keywords: blog org 
;; Homepage: https://github.com/claytharrison/claytharrison.github.io/build.el
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:
(let
    ((my-org-static-blog-source (elt argv 0))
     (domain-name (elt argv 1)))

  (require 'org-static-blog my-org-static-blog-source)
  (require 'org-static-blog-config-vars (expand-file-name "org-static-blog-config-vars.el"))
  (org-static-blog-config-vars-setup "." domain-name))

(org-static-blog-publish)
(setq argv nil)
;;; build.el ends here
