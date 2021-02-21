;; gnus
(require 'gnus)
(setq user-mail-address	"muqiu-han@outlook.com" ;; 这里使用你的邮件地址
      user-full-name	"Muqiu-Han")  ;; 用户名
(setq gnus-select-method '(nnimap "outlook.office365.com")) ;; 邮件服务器
(setq send-mail-function 'smtpmail-send-it
      message-send-mail-function 'smtpmail-send-it
      smtpmail-smtp-server "smtp.office365.com")  ;; smtp服务器
(all-the-icons-gnus-setup)
