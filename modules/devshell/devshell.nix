{ inputs, ... }:
{
  imports = [
    inputs.devshell.flakeModule
  ];
  perSystem =
    { pkgs, ... }:
    {
      devshells.default = {
        commands = [
          {
            help = "alias for bat";
            name = "cat";
            command = "bat $@";
          }
          {
            help = "alias for ls";
            name = "ls";
            command = "eza $@";
          }
          {
            help = "alias for convco commit";
            name = "convcommit";
            command = "convco commit $@";
          }
        ];
        devshell = {
          name = "default-devshell";
          motd = ''
            {202}
            >= Welcome to devshell!
            {reset}{203}
            This is made with numtide/devshells
            This thing is made for this project
            {reset}
          '';
          packages = with pkgs; [
            nh
            bat
            eza
            convco
          ];
        };
      };
    };
}
