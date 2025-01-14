{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    comic-code

    htop
    bat
    exa
    ripgrep
    socat
    wget
    nixpkgs-fmt
    pv
    progress
    zstd
    file
    whois
    niv
    neofetch
    git
  ];
}
