{ config, lib, pkgs, ... }:

{
    networking.hostName = "unidive"; 
    networking.networkmanager.enable = true;
}
