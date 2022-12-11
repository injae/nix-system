{hmUsers, ...}: {
  home-manager.users = {inherit (hmUsers) darwin;};

  users.users.nieel = {
    description = "default";
  };
}

