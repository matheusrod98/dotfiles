{ pkgs, ... }:
{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = "~/Wallpapers/mary-ray-6nTIsDdHVcc-unsplash.jpg";
      wallpaper = ", ~/Wallpapers/mary-ray-6nTIsDdHVcc-unsplash.jpg";
      splash = false;
    };
  };
}
