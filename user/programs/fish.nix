{
  config,
  pkgs,
  ...
}: {
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting

      fish_vi_key_bindings
      set fish_cursor_insert block
    '';
  };
}
