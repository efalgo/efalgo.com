# no-check
{ inputs, pkgs, ... }:
inputs.treefmt-nix.lib.mkWrapper pkgs {
  programs = {
    actionlint.enable = true;
    biome.enable = true;
    deadnix.enable = true;
    nixfmt.enable = true;
    prettier.enable = true;
    statix.enable = true;
    yamlfmt.enable = true;
  };
  projectRootFile = "flake.nix";
  settings = {
    formatter = {
      nixfmt = {
        priority = 1;
        strict = true;
      };
      statix.priority = 2;
    };
    global.excludes = [
      "*/prm/**"
      "*/tmp/**"
    ];
  };
}
