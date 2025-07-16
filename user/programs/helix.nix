{
  config,
  pkgs,
  ...
}: {
  programs.helix = {
    enable = true;
    extraPackages = with pkgs; [
      nil
    ];
    settings = {
      theme = "nord";
      editor = {
        line-number = "relative";
        auto-format = false;
        bufferline = "multiple";
        color-modes = true;
        end-of-line-diagnostics = "hint";
        lsp.display-progress-messages = true;
      };
    };
  };
}
