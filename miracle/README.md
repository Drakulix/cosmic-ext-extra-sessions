# cosmic-ext-miracle

This is cosmic running on miracle!

## Install

### Option 1 - Cloning the repo

Clone the repo with:

```bash
git clone https://github.com/Drakulix/cosmic-ext-extra-sessions.git
```

Within the repo directory, install submodules:

```bash
cd cosmic-ext-extra-sessions
git submodule update --init
```

And finally, build and install for miracle with:

```bash
just build
sudo just install
sudo just install-miracle
```

### Option 2 - Manual installation

Copy the following files:

- `start-cosmic-ext-miracle` somewhere in your `PATH`, e.g. `/usr/local/bin`
- `cosmic-ext-miracle.desktop` into `/usr/share/wayland-sessions/cosmic-ext-miracle.desktop`

## Configuration

Additionally you'll need to add this to your miracle config:

```
startup_apps:
  - command: cosmic-alternative-startup
    restart_on_death: false
    in_systemd_scope: false
```

I also recommend adding the following line for the full cosmic experience:
```
terminal: cosmic-term
custom_actions:
  - command: cosmic-launcher
    action: down
    modifiers:
      - primary
    key: KEY_D
  - command: cosmic-app-library
    action: down
    modifiers:
      - primary
      - shift
    key: KEY_D
```
