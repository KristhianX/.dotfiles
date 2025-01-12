function zrm --wraps='zypper rm -u' --description 'alias zrm zypper rm -u'
  zypper rm -u $argv
        
end
