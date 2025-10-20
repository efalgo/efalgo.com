{ inputs, pkgs, ... }:
inputs.treefmt-nix.lib.mkWrapper pkgs {
  programs = {
    actionlint.enable = true;
    biome.enable = true;
    deadnix.enable = true;
    nixfmt = {
      enable = true;
      strict = true;
    };
    prettier.enable = true;
    statix.enable = true;
    yamlfmt.enable = true;
  };
  projectRootFile = "flake.nix";
  settings = {
    global.excludes = [
      "*/prm/**"
      "*/tmp/**"
    ];
  };
}
