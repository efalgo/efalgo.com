{
  inputs = {
    canonicalization.url = "github:pbizopoulos/canonicalization";
    nixpkgs.follows = "canonicalization/nixpkgs";
  };
  outputs =
    inputs:
    inputs.canonicalization.blueprint { inherit inputs; }
    // {
      inherit (inputs.canonicalization) formatter;
    };
}
