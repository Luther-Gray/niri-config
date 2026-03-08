function sound --wraps='systemctl --user restart pipewire.service pipewire-pulse.service' --description 'alias sound systemctl --user restart pipewire.service pipewire-pulse.service'
  systemctl --user restart pipewire.service pipewire-pulse.service $argv
        
end
