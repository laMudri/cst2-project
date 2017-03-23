let
  pkgs = import <nixpkgs> {};
  inherit (pkgs) stdenv texlive;

  tex-env = texlive.combine {
    inherit (texlive) scheme-small geometry enumitem latexmk import texcount;
  };

in stdenv.mkDerivation {
  name = "dissertation";
  src = ./.;
  buildInputs = [ tex-env ];
  buildPhase = ''
    latexmk
  '';
  installPhase = "";
}
