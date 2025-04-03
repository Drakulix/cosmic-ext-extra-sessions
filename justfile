just := just_executable()
rootdir := ''
prefix := '/usr/local'

build:
  {{ just }} rootdir={{rootdir}} prefix={{prefix}} cosmic-ext-alternative-startup/build-release

install:
  {{ just }} rootdir={{rootdir}} prefix={{prefix}} cosmic-ext-alternative-startup/install

build-sway:
  {{ just }} rootdir={{rootdir}} prefix={{prefix}} sway/cosmic-ext-sway-daemon/build-release

install-sway:
  {{ just }} rootdir={{rootdir}} prefix={{prefix}} sway/cosmic-ext-sway-daemon/install
  install -Dm0644 sway/config-cosmic {{rootdir}}/etc/sway/config-cosmic
  install -Dm0644 sway/cosmic-ext-sway.desktop {{rootdir}}{{prefix}}/share/wayland-sessions/cosmic-ext-sway.desktop
  install -Dm0755 sway/start-cosmic-ext-sway {{rootdir}}{{prefix}}/bin/start-cosmic-ext-sway

install-niri:
  install -Dm0644 niri/cosmic-ext-niri.desktop {{rootdir}}{{prefix}}/share/wayland-sessions/cosmic-ext-niri.desktop
  install -Dm0755 niri/start-cosmic-ext-niri {{rootdir}}{{prefix}}/bin/start-cosmic-ext-niri

install-miracle:
  install -Dm0644 miracle/cosmic-ext-miracle.desktop {{rootdir}}{{prefix}}/share/wayland-sessions/cosmic-ext-miracle.desktop
  install -Dm0755 miracle/start-cosmic-ext-miracle {{rootdir}}{{prefix}}/bin/start-cosmic-ext-miracle
