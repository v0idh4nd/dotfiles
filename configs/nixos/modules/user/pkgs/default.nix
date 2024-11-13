{ config, lib, pkgs, ... }:

# Setups:
#   - river
#   - kde
let
    setup_name = "river";
    setup_file = ./setups/${setup_name};
    setup_pkg = import "${setup_file}/pkgs.nix" { inherit config lib pkgs; };
in
    {
    imports = [
        setup_file
    ];

    users.users.v0idh4nd = {
        packages = with pkgs; [
            # system
            wl-clipboard
            xwayland

            # utils
            aria2
            qrencode
            yt-dlp
            android-tools
            tree-sitter
            btop

            # net
            ungoogled-chromium

            # media
            libresprite
            ffmpeg-full
            spotify
            gimp
            cmus
            mpv

            # game
            unnethack

            # tools
            neovim
            tmux
            qemu
            lf

            # dev
            git
            lldb
            clang
            clang-tools
            gnumake
            cmake
            python3
            nodejs
            zig

            # libs
            raylib

            # docs
            man-pages-posix
            linux-manual
            stdman

            # osint
            #gqrx
            #maltego
            nmap

            # reverse
            binwalk
            radare2
            #cutter

            # other
            pfetch
            figlet
        ] ++ setup_pkg.packages;
    };
    documentation.dev.enable = true;
}
