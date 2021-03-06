(in-package :cl-user)

(asdf:defsystem #:gamebox-sprite-packer
  :description "A spritesheet packer for games."
  :author "Michael Fiano <michael.fiano@gmail.com>"
  :maintainer "Michael Fiano <michael.fiano@gmail.com>"
  :license "MIT"
  :homepage "https://github.com/mfiano/gamebox-sprite-packer"
  :bug-tracker "https://github.com/mfiano/gamebox-sprite-packer/issues"
  :source-control (:git "https://github.com/mfiano/sprite-packer.git")
  :version "1.0.5"
  :encoding :utf-8
  :long-description #.(uiop:read-file-string
                       (uiop/pathname:subpathname *load-pathname* "README.md"))
  :depends-on (#:uiop
               #:alexandria
               #:pngload
               #:opticl
               #:fs-utils)
  :pathname "src"
  :serial t
  :components ((:file "package")
               (:file "packer")
               (:file "unpacker")))
