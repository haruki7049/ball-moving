{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    systems.url = "github:nix-systems/default";
    flake-compat.url = "github:edolstra/flake-compat";
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = import inputs.systems;

      imports = [
        inputs.treefmt-nix.flakeModule
      ];

      perSystem =
        {
          pkgs,
          lib,
          ...
        }:
        let
          lovefile = pkgs.stdenvNoCC.mkDerivation {
            name = "ball-moving";
            src = lib.cleanSource ./.;

            buildInputs = [
              pkgs.just
              pkgs.zip
            ];

            installPhase = ''
              mkdir -p $out/share
              cp dist/* $out/share
            '';
          };
        in
        {
          packages = {
            inherit lovefile;
            default = lovefile;
          };

          treefmt = {
            projectRootFile = "flake.nix";

            # Nix
            programs.nixfmt.enable = true;

            # Lua
            programs.stylua.enable = true;

            # GitHub Actions
            programs.actionlint.enable = true;

            # Markdown
            programs.mdformat.enable = true;

            settings.formatter = {
              stylua.settingsFile = ./stylua.toml;
            };
          };

          devShells.default = pkgs.mkShell {
            packages = [
              # LOVE2d
              pkgs.love
              pkgs.zip
              pkgs.unzip

              # Nix
              pkgs.nil

              # Build runner
              pkgs.just
            ];

            shellHook = ''
              export PS1="\n[nix-shell:\w]$ "
            '';
          };
        };
    };
}
