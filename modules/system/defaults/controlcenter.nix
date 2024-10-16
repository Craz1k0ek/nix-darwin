{ lib, ... }:

with lib;

{
    options = {

        system.defaults.controlcenter.BatteryShowPercentage = mkOption {
            type = types.nullOr types.bool;
            default = null;
            description = ''
              Show the battery percentage in the menu bar.
            '';
        };

    };
}