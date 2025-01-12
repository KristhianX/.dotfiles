function zse --wraps='zypper --no-refresh se' --description 'alias zse zypper --no-refresh se'
  zypper --no-refresh se $argv
        
end
