let
  pkgs = import <nixpkgs> {};
  inherit (pkgs) stdenv haskellPackages;
  inherit (haskellPackages) ghcWithPackages;

  haskell-env = ghcWithPackages (h: with h; [ MonadRandom boxes psqueues ]);

in stdenv.mkDerivation {
  name = "dis-haskell";
  src = ./.;
  buildInputs = [ haskell-env ];
  buildPhase = ''
  '';
  installPhase = "";
}
