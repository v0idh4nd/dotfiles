{ config, lib, pkgs, ... }:

{
    users.users.v0idh4nd = {
        isNormalUser = true;
        description = "v0idh4nd";
        extraGroups = [ "networkmanager" "wheel" "video" "v0idh4nd" ];
    };

    users.users.v0idh4nd.shell = pkgs.fish;
    programs.fish = {
        enable = true;
        shellAliases = {
            vi = "nvim ";
            sudo = "doas ";
        };
        interactiveShellInit = ''
          set fish_greeting 
          set -g fish_key_bindings fish_vi_key_bindings
          fish_config prompt choose astronaut
        '';
    };
}
