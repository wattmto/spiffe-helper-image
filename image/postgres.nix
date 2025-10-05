{ pkgs ? import <nixpkgs> {} }:

pkgs.dockerTools.buildLayeredImage {
  name = "spiffe-helper-postgresql";
  tag = "latest";

  contents = with pkgs; [
    spiffe-helper
    postgresql
  ];

  config = {
    Cmd = [ "${pkgs.spiffe-helper}/bin/spiffe-helper" ];
    Env = [
      "PATH=/bin"
    ];
    ExposedPorts = {
      "8081/tcp" = {};
    };
  };
}
