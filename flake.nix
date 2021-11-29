{
  description = "Get BLAST databases from NCBI";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?rev=4f37689c8a219a9d756c5ff38525ad09349f422f";
    flake-utils = {
      url = "github:numtide/flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, flake-utils}:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in {
        defaultPackage = pkgs.pythonPackages.callPackage ./default.nix { };
      }
    );
}
