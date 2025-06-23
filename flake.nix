{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    systems.url = "github:nix-systems/default";
  };

  outputs =
    {
      nixpkgs,
      systems,
      ...
    }:
    let
      forEachSystem =
        f:
        nixpkgs.lib.genAttrs (import systems) (
          system:
          f {
            pkgs = import nixpkgs {
              inherit system;
            };
          }
        );
    in
    {
      devShells = forEachSystem (
        { pkgs }:
        {
          default = pkgs.mkShell {
            packages = with pkgs; [
            ];
            hardeningDisable = [ "fortify" ];
            # `NIX_LDFLAGS` sets unneeded self-rpath
            # and also doesn't handle spaces properly,
            # so we disable it.
            shellHook = ''
              export NIX_LDFLAGS=""
            '';
          };
        }
      );
    };
}
