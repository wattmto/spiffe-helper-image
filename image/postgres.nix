{ pkgs ? import <nixpkgs> {} }:

pkgs.dockerTools.buildLayeredImage {
  name = "postgresql";
  tag = "latest";

  contents = with pkgs; [
    spiffe-helper
    postgresql
  ];

  config = {
    Entrypoint = [ "${pkgs.spiffe-helper}/bin/spiffe-helper" ];
    Env = [
      "PATH=/bin"
    ];
    ExposedPorts = {
      "8081/tcp" = {};
    };
  };
}
