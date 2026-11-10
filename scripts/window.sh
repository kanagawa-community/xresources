# Window hook for .github/scripts/capture-windows.sh: xterm loads each theme from the
# X resource database (xrdb), then runs the shared session from docs/PREVIEWS.md.
# Requires: xrdb, xterm, fastfetch, eza.
# shellcheck shell=bash
name=Xresources
x11=yes

launch() {
  printf 'xrdb -load %s && %s xterm -maximized -b 8 -bw 0 -fa "%s" -fs 11 -e %s %s' \
    "$root/themes/kanagawa-$1.Xresources" "env -u WAYLAND_DISPLAY" "$font" "$session" "$1"
}
