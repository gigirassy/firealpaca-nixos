To use:

1. Download firealpaca.nix where you put your non-nixpkgs nix stuff.
2. Make sure you have unfree packages enabled.
3. Add firealpaca to your packages (all lowercase), and add this line to your nix config, changing path accordingly:
```nix
   nixpkgs.overlays = [
    (import /home/nune/.config/nixpkgs/overlays/firealpaca.nix)
  ];
```
4. Rebuild config.
5. (optional) Create a desktop file for Firealpaca. It can be ran with firealpaca command.

Please note the hash is refetched at noon everyday to account for updates.

This is not in NixPkgs because I refuse to show my email.
