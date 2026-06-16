# macOS dev toolchain

`dev-setup` provisions a shared development toolchain on macOS with **no
Homebrew and no sudo**. Everything lands under `~/.local`, so it's reusable
across every project. It installs the *toolchain only* — per-project
dependencies (venvs, `node_modules`) are each project's own `make install` job.

## What it installs

| Tool      | Where                              | Notes                                  |
|-----------|------------------------------------|----------------------------------------|
| uv        | `~/.local/bin`                     | Astral's Python & venv manager         |
| Python    | managed by uv (default `3.12`)     | system Python on macOS is too old (3.9)|
| Node LTS  | `~/.local/node-vXX`, symlinked     | `node`/`npm`/`npx` into `~/.local/bin` |

Works on Apple Silicon (`arm64`) and Intel (`x86_64`).

## Install

```sh
./mac/dev-setup
```

Make sure `~/.local/bin` is on your `PATH` (add to `~/.zshrc` if not):

```sh
export PATH="$HOME/.local/bin:$PATH"
```

To keep it on `PATH` as `dev-setup`, symlink it from this repo:

```sh
ln -sf "$PWD/mac/dev-setup" ~/.local/bin/dev-setup
```

## Options

Override versions via environment variables:

```sh
PYTHON_VERSION=3.13 ./mac/dev-setup   # different managed Python
NODE_MAJOR=24       ./mac/dev-setup   # different Node LTS line
```

The script is idempotent — re-running it is a no-op when a tool is already
present.
