{hmUsers, ...}: {
  home-manager.users = {inherit (hmUsers) darwin;};

  users.users.darwin = {
    name = "nieel";
    home = "/Users/nieel";
    description = "default";
  };
}

