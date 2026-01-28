# 🚀 Docker Quotes Generator

**Lightweight (~80MB) ASCII quote generator with Rainbows. Runs on Alpine Linux.**

[![Docker Pulls](https://img.shields.io/docker/pulls/ovis22/docker-quotes?style=flat-square&logo=docker)](https://hub.docker.com/r/ovis22/docker-quotes)
[![Image Size](https://img.shields.io/docker/image-size/ovis22/docker-quotes/latest?style=flat-square&logo=docker&color=yellow)](https://hub.docker.com/r/ovis22/docker-quotes)
[![Lolcat](https://img.shields.io/badge/Lolcat-Rainbow-ff69b4?logo=linux&logoColor=white)](https://github.com/busyloop/lolcat)
[![Multi-Arch](https://img.shields.io/badge/Arch-amd64%20|%20arm64-blue?logo=docker&logoColor=white)](https://hub.docker.com/r/ovis22/docker-quotes/tags)

A secure, non-root container demonstrating hybrid Bash/Python architecture with automated **`lolcat` colorization**.

![Star Wars Quote Demo](https://raw.githubusercontent.com/ovis22/docker-quotes/main/demo.png)

## ⚡ Quick Start

### 1. Default Run (Demo)
Prints a sample message ("Hello World") in rainbow colors.

```bash
docker run --rm ovis22/docker-quotes:v1.1.0
```

### 2. Custom Message (The Fun Part)
Inject your own quotes to generate ASCII art:

```bash
docker run --rm -e QUOTES="Docker is Cool" ovis22/docker-quotes:v1.1.0
```

### 3. Star Wars Style
Use the Python engine and included custom fonts:

```bash
docker run --rm -e APP_MODE=python -e FONT_NAME=starwars -e QUOTES="General Kenobi" ovis22/docker-quotes:v1.1.0
```

## ⚙️ Configuration

| Variable | Default | Description |
| :--- | :--- | :--- |
| `QUOTES` | `"Hello World"` | Text to display. Use `;` for multiple random quotes. |
| `FONT_NAME` | `standard` | Font style (`standard`, `starwars`, `Doom`). |
| `APP_MODE` | `bash` | Engine (`bash` or `python`). |

## 🌟 Features
*   **Universal Architecture**: Supports `linux/amd64` and `linux/arm64`.
*   **Rainbow Output**: Automatic colorization via `lolcat`.
*   **Dynamic Fonts**: Auto-downloads custom fonts (`starwars`, `Doom`) during build.
*   **Orchestration**: Sequential logging support via Docker Compose.
*   **Lightweight**: Built on `alpine:3.21` with multi-stage builds.
*   **Secure**: Runs as non-root `appuser`.

---
Maintained by ovis22. [Source code on GitHub](https://github.com/ovis22/docker-quotes). [See Changelog](https://github.com/ovis22/docker-quotes/blob/main/CHANGELOG.md).
