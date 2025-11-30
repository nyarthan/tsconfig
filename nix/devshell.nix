{ inputs, ... }:
{
  imports = [
    inputs.devshell.flakeModule
  ];

  perSystem =
    { pkgs, ... }:
    {
      devshells.default = {
        packages = [
          pkgs.nodejs_24
          pkgs.pnpm
          pkgs.moon
        ];

        devshell.motd = "";
        devshell.startup.setup-husky.text = "./node_modules/.bin/husky";
      };
    };
}
