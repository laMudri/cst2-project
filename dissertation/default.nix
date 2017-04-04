let
  pkgs = import <nixpkgs> {};
  inherit (pkgs) stdenv texlive;

  tex-env = texlive.combine {
    inherit (texlive) scheme-small geometry enumitem latexmk import texcount makecell
      #minted ifplatform xstring
      ucs bbm xifthen ifmtarg polytable lazylist cm-super babel-greek greek-fontenc cbfonts textgreek;
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
