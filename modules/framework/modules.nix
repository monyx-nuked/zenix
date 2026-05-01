{ inputs, ... }:
{
  # https://flake.parts/options/flake-parts-modules.html
  imports = [
    inputs.flake-parts.flakeModules.modules
  ];
}
