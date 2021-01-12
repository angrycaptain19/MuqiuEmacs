;;; choice-program-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "choice-program" "choice-program.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from choice-program.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "choice-program" '("choice-program")))

;;;***

;;;### (autoloads nil "choice-program-complete" "choice-program-complete.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from choice-program-complete.el

(autoload 'choice-program-complete-default-prompt "choice-program-complete" "\
Format a prompt with optional default formatting.
PROMPT is the text used in the header minibuffer.
DEFAULT is the default input if given.
HISTORY is a quoted variable that has the history for this prompt history.

\(fn PROMPT &optional DEFAULT HISTORY)" nil nil)

(autoload 'choice-program-complete "choice-program-complete" "\
Read from the user a choice.

See `completing-read'.

PROMPT is a string to prompt with; normally it ends in a colon and a space.

CHOICES the list of things to auto-complete and allow the user to choose
  from.  Each element is analyzed independently If each element is not a
  string, it is written with `prin1-to-string'.

RETURN-AS-STRING is non-nil, return the symbol as a string
  (i.e. `symbol-name).

If REQUIRE-MATCH is non-nil, the user is not allowed to exit unless
  the input is (or completes to) an element of TABLE or is null.
  If it is also not t, Return does not exit if it does non-null completion.

If INITIAL-CONTENTS is non-nil, insert it in the minibuffer initially.
  If it is (STRING . POSITION), the initial input
  is STRING, but point is placed POSITION characters into the string.

HISTORY, if non-nil, specifies a history list
  and optionally the initial position in the list.
  It can be a symbol, which is the history list variable to use,
  or it can be a cons cell (HISTVAR . HISTPOS).
  In that case, HISTVAR is the history list variable to use,
  and HISTPOS is the initial position (the position in the list
  which INITIAL-CONTENTS corresponds to).
  If HISTORY is t, no history will be recorded.
  Positions are counted starting from 1 at the beginning of the list.

DEFAULT, if non-nil, will be returned when the user enters an empty
  string.

ALLOW-EMPTY-P, if non-nil, allow no data (empty string) to be returned.  In
  this case, nil is returned, otherwise, an error is raised.

NO-INITIAL-CONTENTS-ON-SINGLETON-P, if non-nil, don't populate with initialial
  contents when there is only one choice to pick from.

ADD-PROMPT-DEFAULT-P, if non-nil, munge the prompt using the default notation
  (ie `<Prompt> (default CHOICE)').

\(fn PROMPT CHOICES &optional RETURN-AS-STRING REQUIRE-MATCH INITIAL-CONTENTS HISTORY DEFAULT ALLOW-EMPTY-P NO-INITIAL-CONTENTS-ON-SINGLETON-P ADD-PROMPT-DEFAULT-P)" nil nil)

;;;***

;;;### (autoloads nil nil ("choice-program-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; choice-program-autoloads.el ends here
