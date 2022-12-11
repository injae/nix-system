{hmUsers, ...}: {
  home-manager.users = {inherit (hmUsers) darwin;};

  users.users.nieel = {
    name = "nieel";
    home = "/Users/nieel";
    description = "default";
  };
}

