{ config, lib, pkgs, ... }:

{
    time.timeZone = "Europe/Moscow";

    xdg.portal = {
        enable = true;
        wlr = {
            enable = true;
        };
        config = {
            common = {
                default = [ "gtk" ];
            };
        };
        extraPortals = with pkgs; [
            xdg-desktop-portal-wlr
            xdg-desktop-portal-gtk
        ];
    };

    security.doas.enable = true;
    security.sudo.enable = false;
    security.doas.extraRules = [{
        users = ["v0idh4nd"];
        keepEnv = true; 
        persist = true; 
    }];

    programs.mtr.enable = true;
    programs.gnupg.agent = {
        enable = true;
        enableSSHSupport = true;
    };

    users.defaultUserShell = pkgs.bash;
    programs.bash = {
        interactiveShellInit = ''
            if [[ $(${pkgs.procps}/bin/ps --no-header --pid=$PPID --format=comm) != "fish" && -z ''${BASH_EXECUTION_STRING} ]]
            then
              shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=""
              exec ${pkgs.fish}/bin/fish $LOGIN_OPTION
            fi
        '';
    };

    fonts = {
        enableDefaultPackages = true;
        packages = with pkgs; [
            jetbrains-mono
            departure-mono
            noto-fonts
            noto-fonts-cjk-sans
            noto-fonts-cjk-serif
            noto-fonts-color-emoji
            terminus_font
            terminus_font_ttf
        ];

        fontconfig = {
            enable = true;
            defaultFonts = {
                serif = [ "Noto Serif" ];
                sansSerif = [ "Noto Sans" ];
                monospace = [ "Noto Sans Mono" ];
            };
            antialias = true;
            subpixel = {
                rgba = "rgb";
                lcdfilter = "default";
            };
            hinting = {
                enable = true;
                style = "medium";
                #autohint = true;
            };
        };
    };

}
