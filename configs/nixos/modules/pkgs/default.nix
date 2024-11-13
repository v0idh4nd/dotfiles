{ config, lib, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        # system
        ntfs3g

        # utils
        inetutils
        killall
        gnupg
        ncftp
        wget
        curl 
        file
        nvi
        dig
        jq

        # docs
        man-pages
    ];
}
