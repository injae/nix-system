{
  config,
  pkgs,
  suites,
  home-manager,
  ...
}: {
  imports = with suites; base;

  # The `mas` package is included here as a test for platform-specific package
  # support in Digga. Feel free to remove it in your config.
  environment.systemPackages = with pkgs; [
    mas
  ];

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.users.nieel = {pkgs, ...}: {
    home.packages = with pkgs; [

    ];
    home.stateVersion = "22.11";
    programs.home-manager.enable = true;
  };
}
