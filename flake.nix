{
  description = "flake for zenix project/configuration (monyxoid/zenix)";
  inputs = {
    nixpkgs = {
      # nixpkgs
      # > use nixos-unstable for stability
      # > largest repository of the linux world
      # > every packages has binary
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
  };
  outputs = { self }: { };
}
