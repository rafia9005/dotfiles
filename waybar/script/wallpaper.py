import os
import random

def set_wallpaper():
    wallpaper_dir = os.path.expanduser('~/Pictures/wallpaper/')
    wallpapers = os.listdir(wallpaper_dir)
    valid_extensions = ('.jpg', '.jpeg', '.png', '.bmp', '.gif')
    wallpapers = [f for f in wallpapers if f.lower().endswith(valid_extensions)]

    if not wallpapers:
        print("No wallpapers found in the directory.")
        return

    selected_wallpaper = random.choice(wallpapers)
    wallpaper_path = os.path.join(wallpaper_dir, selected_wallpaper)
    command = f'swaybg -m fill -i {wallpaper_path} &'
    os.system("pkill swaybg")
    os.system(command)

set_wallpaper()
