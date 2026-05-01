{
  description = "flake for zenix project/configuration (monyxoid/zenix)";
  inputs = {
    # essentials #
    nixpkgs = {
      # nixpkgs
      # > using nixos-unstable for latest packages
      # > is largest repository of the linux world
      # > it has binary cache for every package...
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
    # framework #
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs-lib";
    };
    # libraries #
    nixpkgs-lib = {
      url = "github:nix-community/nixpkgs.lib";
    };
    import-tree = {
      url = "github:denful/import-tree";
    };
    devshell = {
      url = "github:numtide/devshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } (inputs.import-tree ./modules);
}
