# Waybar
Es mi waybar personal super liviano para reutilizar en el futuro

<img width="1920" height="36" alt="imagen" src="https://github.com/user-attachments/assets/1cf3aa42-fdb7-462e-aaa7-b8601c0fdc9d" />


Direccion donde debes editar 

`~/.config/waybar/config`

```json
{
  "layer": "top",
  "position": "top",

  "modules-left": ["custom/arch", "clock", "mpris"],

  "modules-center": ["hyprland/workspaces" ],
  
  "modules-right": [
    "hyprland/window",
    "network",
    "custom/power"
  ],
  "hyprland/window": {
    "format": "{}",
    "max-length": 20,
    "rewrite": {
        "(.*)Mozilla Firefox": "󰈹 $1",
        "(.*)Steam": " $1"
    }
  },
  "mpris": {
  "format": "{player_icon} {title} - {artist}",
  "format-paused": "⏸ {title}",
  "player-icons": {
    "firefox": "󰈹"
  },
  "max-length": 20
  },

  "custom/arch": {
    "format": "  ",
    "tooltip": false,
    "on-click": "~/.config/rofi/launchers/type-3/launcher.sh"
  },

  "custom/power": {
    "format": "⏻",
    "tooltip": false,
    "on-click": "~/.config/rofi/powermenu/type-4/powermenu.sh"
  },

  "clock": {
    "format": "󰥔 {:%H:%M}"
  },

  "network": {
    "format-wifi": "󰖩 {essid} ↓{bandwidthDownBits} ↑{bandwidthUpBits}",
    "format-ethernet": "󰈀 ↓{bandwidthDownBits} ↑{bandwidthUpBits}",
    "format-disconnected": "󰖪 offline",
    "interval": 1
  },

  "hyprland/workspaces": {
    "format": "{icon}",
    
    "sort-by-number": true,
    "persistent-workspaces": {
      "*": 11
    },
    "format-icons": {
      "1": "一",
      "2": "二",
      "3": "三",
      "4": "四",
      "5": "五",
      "6": "六",
      "7": "七",
      "8": "八",
      "9": "九",
      "10": "十",
      "active": "使う",
      "default": "闇"
    }
  }
}
```

para el diseño 

Direccion donde debes editar 

`~/.config/waybar/style.css`

```css
/* ═══ WAYBAR  ═══ */

* {
    font-family: "JetBrainsMono Nerd Font";
    font-size: 14px;
    min-height: 0;
}
/* Fondo general */
window#waybar {
    background: rgba(10, 10, 20, 0.55);
    border-bottom: 2px solid rgba(180, 120, 255, 0.25);
    color: #d8c8ff;
}

/* Workspaces */
#workspaces {
    margin: 4px 8px;
    padding: 0px 6px;
    border-radius: 14px;
    background: rgba(25, 20, 40, 0.6);
}

#workspaces button {
    padding: 0 8px;
    color: #8b6bbd;
    border-radius: 10px;
    transition: all 0.3s ease;
}

#workspaces button.active {
    color: #f5e0ff;
    background: rgba(140, 90, 255, 0.35);
    box-shadow: inset 0 -2px #c084fc;
}

#workspaces button:hover {
    background: rgba(120, 80, 200, 0.25);
    color: white;
}

/* Reloj */
#clock {
    background: rgba(30, 20, 50, 0.6);
    padding: 0 14px;
    margin: 4px;
    border-radius: 12px;
    color: #d8b4fe;
}

/* Música */
#mpris {
    background: rgba(25, 20, 45, 0.65);
    padding: 0 12px;
    margin: 4px;
    border-radius: 12px;
    color: #c084fc;
}

/* Ventana activa */
#window {
    background: rgba(20, 15, 35, 0.5);
    padding: 0 14px;
    border-radius: 12px;
    color: #e9d5ff;
}

/* Network */
#network {
    background: rgba(30, 20, 50, 0.65);
    padding: 0 14px;
    margin: 4px;
    border-radius: 12px;
    color: #c4b5fd;
}

/* Botón Arch */
#custom-arch {
    font-size: 18px;
    color: #c084fc;
    padding: 0 14px;
    margin: 4px;
    border-radius: 12px;
    background: rgba(30, 20, 50, 0.65);
}

/* Power */
#custom-power {
    color: #ff79c6;
    padding: 0 14px;
    margin: 4px;
    border-radius: 12px;
    background: rgba(40, 20, 40, 0.65);
}

/* Hover general */
#custom-power:hover,
#custom-arch:hover,
#network:hover,
#clock:hover,
#mpris:hover {
    background: rgba(120, 70, 180, 0.45);
    transition: all 0.3s ease;
}


```

`~/.config/rofi/launchers/type-3/launcher.sh` y `"~/.config/rofi/powermenu/type-4/powermenu.sh"` son configuraciones tomadas por [Rofi](https://github.com/adi1090x/rofi?utm_source=chatgpt.com).

