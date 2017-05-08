let
  pkgs = import <nixpkgs> {};
  inherit (pkgs) stdenv haskell haskellPackages lib;

  hlib = haskell.lib;

  hask-env = haskellPackages.ghcWithPackages
    (h: with h; map hlib.enableLibraryProfiling [ ieee754 text ]);

in stdenv.mkDerivation {
  name = "src";
  src = if lib.inNixShell then null else ./.;
  buildInputs = [ hask-env ];
  buildPhase = ''
    ghc -O -o Main -Werror -i. -main-is MAlonzo.Code.Main MAlonzo/Code/Main.hs --make -fwarn-incomplete-patterns -fno-warn-overlapping-patterns -rtsopts -prof -fprof-auto
  '';
  installPhase = "";
}
