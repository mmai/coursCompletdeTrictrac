{
  # à lancer avec `nix develop`
  description = "gcloud";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
  flake-utils.lib.eachDefaultSystem (system:
        # let pkgs = nixpkgs.legacyPackages.${system}; in
        let pkgs = import nixpkgs {
          inherit system;
          config = { allowUnfree = true; };
        }; in
        {
          # devShell = import ./shell.nix { inherit pkgs; };
          devShell = with pkgs; mkShell rec {
            buildInputs = [ ];
            shellHook = ''
            # fixes libstdc++ issues
            LD_LIBRARY_PATH=${stdenv.cc.cc.lib}/lib/
            '';

          };
        }
        );
      }
