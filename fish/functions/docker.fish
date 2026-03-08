function docker --description 'alias docker=sudo systemctl start docker'
  sudo systemctl start docker $argv
        
end
