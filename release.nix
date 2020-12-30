let
  sources = import ./nix/sources.nix {};
  pkgs = import sources.nixpkgs {};
in
  pkgs.pythonPackages.callPackage ./default.nix {}
