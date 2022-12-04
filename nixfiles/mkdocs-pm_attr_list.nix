let
  pkgs = import <nixpkgs> {};
  pythonPackages = pkgs.python3Packages;
in
{
  inputs.python.package = pythonPackages.buildPythonPackage {
    name = "pm_attr_list";
    src = ./.;
    meta = with pythonPackages; {
      description = "My Python library";
    };
    propagatedBuildInputs = [ pkgs.python3 ];
  };
}
