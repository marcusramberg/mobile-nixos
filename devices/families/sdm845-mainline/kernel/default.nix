{ mobile-nixos
, lib 
, fetchFromGitLab
, ...
}:

mobile-nixos.kernel-builder rec {
  version = "6.4.13";
  configfile = ./config.aarch64;

  src = fetchFromGitLab {
    owner = "sdm845-mainline";
    repo = "linux";
    rev = "sdm845-${version}";
    hash = "sha256-+LgToL1kqtjn1G8ayNpDumAGXgRu5EjI0MEx9eNazVg=";
  };

  isModular = false;
  isCompressed = "gz";
}
