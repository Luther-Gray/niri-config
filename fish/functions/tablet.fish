function tablet --wraps='systemctl --user enable opentabletdriver.service --now' --description 'alias tablet systemctl --user enable opentabletdriver.service --now'
  systemctl --user enable opentabletdriver.service --now $argv
        
end
