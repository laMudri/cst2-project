let
  pkgs = import <nixpkgs> {};
  inherit (pkgs) stdenv texlive haskellPackages;

  tex-env = texlive.combine {
    inherit (texlive) scheme-small geometry enumitem latexmk import texcount makecell clrscode3e #algorithms algorithmicx
      #minted ifplatform xstring
      ucs bbm xifthen ifmtarg polytable lazylist cm-super babel-greek greek-fontenc cbfonts textgreek
      stmaryrd;
  };

  #hask-env = haskellPackages.ghcWithPackages (h: with h; [ lhs2tex ]);

in stdenv.mkDerivation {
  name = "dissertation";
  src = ./.;
  buildInputs = [ tex-env haskellPackages.lhs2tex ];
  buildPhase = ''
    latexmk
  '';
  installPhase = "";
}
