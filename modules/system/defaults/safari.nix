{ lib, ... }:

with lib;

{
  options = {

    system.defaults.safari.IncludeDevelopMenu = mkOption {
      type = types.nullOr types.bool;
      default = null;
      description = ''
        Show the developer menu in Safari.
      '';
    };

    system.defaults.safari.SearchProviderShortName = mkOption {
      type = types.nullOr (types.enum [ "DuckDuckGo" "Google" "Yahoo" "Bing" "Ecosia"]);
      default = null;
      example = "DuckDuckGo";
      description = ''
        The name of the default search provider for Safari.
      '';
    };

    system.defaults.safari.PrivateSearchEngineUsesNormalSearchEngineToggle = mkOption {
        type = types.nullOr types.bool;
        default = null;
        description = ''
          Whether to use the default search provider when browsing privately in Safari. The default is true.
        '';
    };

    system.defaults.safari.PrivateSearchProviderShortName = mkOption {
      type = types.nullOr (types.enum [ "DuckDuckGo" "Google" "Yahoo" "Bing" "Ecosia"]);
      default = null;
      example = "DuckDuckGo";
      description = ''
        The name of the default search provider when browsing privately in Safari.
      '';
    };

    system.defaults.safari.ShowStandaloneTabBar = mkOption {
      type = types.nullOr types.bool;
      default = null;
      description = ''
        Whether to have a separate or compact tab layout. The default is separate.
      '';
    };

  };
}
