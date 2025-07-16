{
  config,
  pkgs,
  ...
}: {
  programs.starship = {
    enable = true;
    settings = {
      character = {
        success_symbol = "[](bold green)";
        error_symbol = "[](bold red)";
        vimcmd_symbol = "[](bold green)";
        vimcmd_replace_one_symbol = "[](bold red)";
        vimcmd_replace_symbol = "[](bold red)";
        vimcmd_visual_symbol = "[](bold yellow)";
      };

      git_branch.symbol = " ";

      git_status = {
        format = ''([\[ $all_status$ahead_behind\]]($style) )'';
        conflicted = "[ $count](bold red) ";
        ahead = "[ $count](bold blue) ";
        behind = "[ $count](bold red) ";
        diverged = "[](bold red) ";
        untracked = "[ $count](bold yellow) ";
        stashed = "[ $count](bold red) ";
        modified = "[ $count](bold yellow) ";
        staged = "[ $count](bold green) ";
        renamed = "[ $count](bold green) ";
        deleted = "[ $count](bold red) ";
        style = "bold purple";
      };

      nix_shell = {
        format = ''via [$symbol$name \($state\)]($style) '';
        symbol = " ";
      };
    };
  };
}
