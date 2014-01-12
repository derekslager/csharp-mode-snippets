# Overview

A collection of C# snippets for yasnippet.

# Installation

Clone the repository locally (the specific location isn't important).

    $ git clone https://github.com/derekslager/csharp-mode-snippets

Next, load into your environment (adjust the path as needed):

    (let ((csharp-mode-snippets "~/dev/csharp-mode-snippets"))
      (add-to-list 'load-path csharp-mode-snippets)
      (require 'csharp-mode-snippets-support)
      (add-to-list 'yas-snippet-dirs csharp-mode-snippets)
      (yas-reload-all))
