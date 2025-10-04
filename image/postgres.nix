{ pkgs ? import <nixpkgs> {} }:

pkgs.dockerTools.buildLayeredImage {
  name = "spire-postgresql";
  tag = "latest";

  contents = with pkgs; [
    spire-server
    postgresql
  ];

  config = {
    Cmd = [ "${pkgs.spire-server}/bin/spire-server" "run" ];
    Env = [
      "PATH=/bin"
    ];
    ExposedPorts = {
      "8081/tcp" = {};
    };
  };
}
