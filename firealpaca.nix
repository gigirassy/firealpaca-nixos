self: prev:
let
  pname = "firealpaca";
  src = prev.fetchurl {
    url = "https://firealpaca.com/download/linux";
    hash = "sha256-PBg8FMr3RbLDwgc0qP9l0IRxz14b8ZdNSpx7WVtuC6U=";
  };
in {
  firealpaca = prev.appimageTools.wrapType2 rec {
    inherit pname src;
    version = "auto";  # shorthand since URL always newest
    extraPkgs = p: [];
    meta = with prev.lib; {
      description = "FireAlpaca painting application (AppImage)";
      homepage = "https://firealpaca.com/";
      license = licenses.unfree;
      platforms = [ "x86_64-linux" ];
    };
  };
}
