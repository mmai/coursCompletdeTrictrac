{ pkgs, ... }:
let
  mkdocs-pm_attr_list = import ./nixfiles/mkdocs-pm_attr_list.nix;
in 
{
  # https://devenv.sh/basics/
  # env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [ pkgs.mkdocs pkgs.python310Packages.mkdocs-material mkdocs-pm_attr_list.inputs.python.package ];

  # enterShell = ''
  #   hello
  #   git --version
  # '';

  # https://devenv.sh/languages/
  languages.nix.enable = true;

  # https://devenv.sh/scripts/
  # scripts.hello.exec = "echo hello from $GREET";

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";
}