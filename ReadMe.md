# 🎉 RDP Window Resizer - The Ultimate Window Management Script! 🎉

Welcome to the **RDP Window Resizer**! This AutoHotkey (AHK) script is the best thing to happen to your Remote Desktop windows since the invention of sliced bread! Say goodbye to the hassle of manually resizing and repositioning your windows and hello to automated, pixel-perfect window management. 🤩

## 🚀 Features

- **Automatic Centering:** If you have just one window with the specified title, it gets perfectly centered on your current monitor with your desired dimensions.
- **Multiple Window Management:** Got more than one? No problem! The script arranges them beautifully starting from your specified coordinates with a neat offset for each one.
- **Effortless Customization:** Simply tweak the variables to match your needs, and you're good to go!

## 🔧 How It Works

1. **Single Window Mode:** When there's only one window matching the specified title, it will be centered on your monitor with the width and height you set.
2. **Multi-Window Mode:** When there are multiple windows with the specified title, they will be arranged starting from `start_x`, `start_y` coordinates with an offset for each subsequent window.

## 📋 Variables

- `target_title`: The (partial) title of the windows to be managed. (default "Remote Desktop")
- `window_width`: The desired width for the windows. (default 1920)
- `window_height`: The desired height for the windows. (default 1200)
- `start_x`: The initial x-coordinate for positioning the windows. (default 95)
- `start_y`: The initial y-coordinate for positioning the windows. (default 70)
- `offset_x`: The x-coordinate offset for each subsequent window. (default 50)
- `offset_y`: The y-coordinate offset for each subsequent window. (default 50)