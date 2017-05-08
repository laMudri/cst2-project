let
  pkgs = import <nixpkgs> {};
  inherit (pkgs) stdenv haskellPackages;

  hask-env = haskellPackages.ghcWithPackages (h: with h; [ csv ]);

in stdenv.mkDerivation {
  name = "dissertation-data";
  src = ./.;
  buildInputs = [ hask-env ];
  buildPhase = ''
  '';
  installPhase = "";
}
