# 🚀 Docker Quotes Generator

**Lightweight (~20MB) ASCII quote generator. Runs on Alpine Linux.**

[![Docker Pulls](https://img.shields.io/docker/pulls/ovis22/docker-quotes?style=flat-square&logo=docker)](https://hub.docker.com/r/ovis22/docker-quotes)
[![Image Size](https://img.shields.io/docker/image-size/ovis22/docker-quotes/latest?style=flat-square&logo=docker&color=yellow)](https://hub.docker.com/r/ovis22/docker-quotes)

A secure, non-root container demonstrating hybrid Bash/Python architecture.

![Star Wars Quote Demo](https://raw.githubusercontent.com/ovis22/docker-quotes/main/demo.png)

## ⚡ Quick Start

### 1. Default Run (Demo)
Prints a sample message ("Hello World") using standard settings.

```bash
docker run --rm ovis22/docker-quotes
```

### 2. Custom Message (The Fun Part)
Inject your own quotes to generate ASCII art:

```bash
docker run --rm -e QUOTES="Docker is Cool" ovis22/docker-quotes
```

### 3. Star Wars Style
Use the Python engine and included custom fonts:

```bash
docker run --rm -e APP_MODE=python -e FONT_NAME=starwars -e QUOTES="General Kenobi" ovis22/docker-quotes
```

## ⚙️ Configuration

| Variable | Default | Description |
| :--- | :--- | :--- |
| `QUOTES` | `"Hello World"` | Text to display. Use `;` for multiple random quotes. |
| `FONT_NAME` | `standard` | Font style (`standard`, `starwars`, `Doom`). |
| `APP_MODE` | `bash` | Engine (`bash` or `python`). |

---
Maintained by ovis22. [Source code on GitHub](https://github.com/ovis22/docker-quotes).
