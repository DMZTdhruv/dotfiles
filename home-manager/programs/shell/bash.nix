{...}: let
  alias = ''
    alias icat='kitty icat'
    alias wpset='swww img'
    alias code='tmux -u'
    alias cls='clear'
    alias bt='bluetoothctl'
    alias gp='git push'
    alias gc='git commit'
    alias gl='git pull'
    alias gm='git merge'
    alias ga='git add'
  '';
in {
  programs.bash = {
    enable = false;
    initExtra = alias;
  };
}
