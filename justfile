testthis message:
  @echo 'Testing Build of Commit {{message}}'
  sudo git add --all
  sudo git commit -m {{message}}
  sudo nixos-rebuild test --flake .
  
switchit:
  sudo nixos-rebuild switch --flake .
