{ inputs, ... }:
{
  imports = [
    inputs.devshell.flakeModule
  ];
  perSystem =
    { pkgs, ... }:
    {
      devshells.default = {
        devshell = {
          name = "default-devshell";
          motd = ''
            {202} >= Welcome to devshell!{reset}
            This was made with numtide/devshells
            This thing was made for this project
          '';
          packages = with pkgs; [
            hello
          ];
        };
      };
    };
}
