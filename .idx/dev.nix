# To learn more about how to use Nix to configure your environment
# see: 
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05"; # or "unstable"
  # Use https://search.nixos.org/packages to find packages
  packages = [
    (pkgs.python311.withPackages(ps: with ps; [simple-term-menu]))
    pkgs.python311Packages.pip
  ];
  # Sets environment variables in the workspace
  env = {};
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "ms-python.debugpy"
      "ms-python.python"
    ];
    # Enable previews
    previews = {
      enable = true;
      previews = {
      };
    };
    # Workspace lifecycle hooks
    workspace = {
      # Runs when a workspace is first created
      onCreate = {
         default.openFiles = [ "main.py" ];
      };
      # Runs when the workspace is (re)started
      onStart = {
      };
    };
  };
}
