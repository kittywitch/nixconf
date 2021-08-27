{ hextorgba, base16, font }:

let
  bcolor = color: ''
    color: ${color};
    border-color: ${color};
  '';
in
''
  * {
    border: none;
    border-radius: 0;
    background: none;
    font-family: "${font.name}";
    font-size: ${font.size_css};
    min-height: 10px;
    text-shadow: none;
    box-shadow: none;
  }

  #mode {
    color: ${base16.base06};
    padding-left: 4px;
    padding-right: 4px;
  }

  #clock, #memory, #cpu, #temperature, #pulseaudio, #network, #mpd, #backlight, #battery, #custom-weather, #custom-konawall, #custom-gpg-status, #idle_inhibitor {
    margin-left: 4px;
    margin-right: 4px;
    padding-left: 4px;
    padding-right: 4px;
    transition: none;
    border-bottom: 2px solid transparent;
    color: ${base16.base07};
  }

  .modules-left, .modules-center, .modules-right {
    margin: 2px 4px;
    padding: 0 4px;
    background: ${hextorgba base16.base00 1.0};
    border-radius: 3px;
  }

  tooltip {
    padding: 2px;
    background: ${hextorgba base16.base00 0.85};
    border-radius: 3px;
  }

  tooltip label {
    color: ${base16.base07};
  }

  #tray {
    margin: 0 4px;
  }

  #window {
    color: ${base16.base06};
  }

  #workspaces button:first-child {
    margin-left: 0;
  }

  #window {
    margin-left: 4px;
  }

  window#waybar.empty {
    margin-left: 0px;
  }

  #workspaces button {
    color: ${base16.base06};
    border-bottom: 2px solid ${base16.base06};
    margin: 0 2px;
    padding: 0 4px;
  }

  #workspaces button.focused {
    color: ${base16.base0D};
    border-bottom: 2px solid ${base16.base0D};
  }

  #workspaces button:hover {
    transition: none;
    box-shadow: inherit;
    text-shadow: inherit;
    background: ${base16.base07};
    color: ${base16.base0D};
  }

  #clock.tavy { ${bcolor base16.base0B} }
  #clock.kat { ${bcolor base16.base0C} }
  #clock.storybook { ${bcolor base16.base0F} }
  #idle_inhibitor.activated { ${bcolor base16.base0E} }
  #idle_inhibitor.deactivated { ${bcolor base16.base0D} }
  #network { ${bcolor base16.base0C} }
  #pulseaudio { ${bcolor base16.base06} }
  #temperature { ${bcolor base16.base0B} }
  #pulseaudio.muted { ${bcolor base16.base03} }
  #battery { ${bcolor base16.base0C} }
  #backlight { ${bcolor base16.base0D} }
  #cpu { ${bcolor base16.base08} }
  #memory { ${bcolor base16.base09} }
  #clock { ${bcolor base16.base07} }
''
