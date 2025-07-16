{
  config,
  inputs,
  pkgs,
  ...
}: {
  programs.firefox = {
    enable = true;
    profiles.marika = {
      name = "marika";
      settings = {
        "extensions.autoDisableScopes" = 0;

        "browser.uiCustomization.state" = builtins.toJSON {
          currentVersion = 22;
          newElementCount = 2;
          seen = ["developer-button" "screenshot-button" "ublock0_raymondhill_net-browser-action" "sponsorblocker_ajay_app-browser-action"];
          dirtyAreaCache = ["nav-bar" "PersonalToolbar" "toolbar-menubar" "TabsToolbar" "unified-extensions-area"];
          placements = {
            widget-overflow-fixed-list = [];
            unified-extensions-area = [];
            nav-bar = ["back-button" "forward-button" "stop-reload-button" "urlbar-container" "downloads-button" "unified-extensions-button"];
            toolbar-menubar = ["menubar-items"];
            TabsToolbar = ["tabbrowser-tabs"];
            PersonalToolbar = ["personal-bookmarks"];
          };
        };
      };
      extensions.packages = with inputs.firefox-addons.packages.${pkgs.system}; [
        sponsorblock
        ublock-origin
      ];
    };
  };
}
