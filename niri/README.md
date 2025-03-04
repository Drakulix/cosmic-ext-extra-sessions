# cosmic-ext-niri

This is cosmic running on niri!

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

And finally, instally for niri with:

```bash
just install-niri
```

### Option 2 - Manual installation

Copy the following files:

- `start-cosmic-ext-niri` somewhere in your `PATH`, e.g. /usr/local/bin
- `cosmic-ext-niri.desktop` into `/usr/share/wayland-sessions/cosmic-ext-niri.desktop`

### Update your Niri config

If you haven't yet, run niri once to generate a config file.

In your niri `config.kdl file`, add the following line (removing any existing spawn-at-startup options):

```kdl
spawn-at-startup "cosmic-ext-alternative-startup"
```

I also recommend adding the following lines for the full cosmic experience to your `binds`:

```kdl
Mod+T { spawn "cosmic-term"; }
Mod+D { spawn "cosmic-launcher"; }
Mod+Shift+D { spawn "cosmic-app-library"; }
Mod+Alt+L { spawn "cosmic-greeter"; }
```

Make sure to also disable any existing entries in your for these modifiers.
