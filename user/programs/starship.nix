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
    };
  };
}
