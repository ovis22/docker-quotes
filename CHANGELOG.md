# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v1.1.0] - 2026-01-28

### Added
- **Multi-Architecture Support**: Native support for `linux/amd64` and `linux/arm64` (Apple Silicon, Raspberry Pi) via Docker Buildx.
- **Lolcat Integration**: Added `lolcat` (via pip) for rainbow-colored terminal output.
- **Graceful Degradation**: Scripts now automatically check for `lolcat` and fallback to standard text if missing.
- **CI Enhancements**:
    - **Smoke Test**: Added verification step (`docker compose up`) before pushing.
    - **Exit Code Check**: Pipeline now fails if any container exits with an error code.
    - **Tagging**: Automated tagging for `v1.1.0` and `latest`.

### Changed
- **Base Image**: Pinned base image to `alpine:3.21` instead of `latest` for reproducibility.
- **Optimization**: Refactored Dockerfile to use **Multi-Stage Builds** (separating font download from runtime).
- **Configuration**: `docker-compose.yml` now explicitly uses the `v1.1.0` image tag.
- **Docs**: Updated README with architecture prerequisites and refined installation steps.

### Fixed
- **Signal Handling**: Updated `entrypoint.sh` to use `exec`, ensuring containers handle termination signals (SIGTERM) correctly.

## [v1.0.0] - 2026-01-20

### Added
- Initial release of the project.
- Universal `Dockerfile` based on Alpine Linux.
- Hybrid architecture supporting `bash` and `python` execution modes.
- `docker-compose.yml` orchestration with sequential logging dependency.
- Three initial variants: Default, Star Wars, Polish Songs.
- Basic GitHub Actions CI pipeline for `amd64`.
- Implementation of non-root user (`appuser`) for security.
