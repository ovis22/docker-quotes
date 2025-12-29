<div align="center">

<h1>Dockerized ASCII Quote Generators: Optimized Multi-Variant Collection</h1>
<p><strong>Star Wars & Polish-Music inspired quotes rendered with FIGlet on Alpine Linux.</strong></p>

<p> 
      <a href="https://www.alpinelinux.org/">
      <img src="https://img.shields.io/badge/Alpine%20Linux-0D597F?logo=alpinelinux&logoColor=fff" alt="Alpine Linux"></a>
      <img src="https://img.shields.io/github/languages/top/ovis22/docker-quotes" alt="Top language">
      <a href="https://figlet.org/">
      <img src="https://img.shields.io/badge/ASCII%20art-FIGlet-blueviolet?style=flat" alt="FIGlet"></a>
      <a href="https://docker.com/">
      <img src="https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=fff" alt="Docker"></a>
      <a href="https://opensource.org/licenses/MIT">
      <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT"></a>
</p>

<p>A collection of containerized quote generators focused on Docker best practices. Features include a 90% footprint reduction via Alpine Linux, enhanced security through non-root execution, and optimized multi-stage-like build patterns.</p>

<div align="center">
  <img src="demo.png" alt="Star Wars Quote Demo" width="700">
</div>

<h4>
  <a href="https://github.com/ovis22/docker-quotes/issues">Report Bug</a>
  <span> · </span>
  <a href="https://github.com/ovis22/docker-quotes/issues">Request Feature</a>
</h4>

</div>

# :notebook_with_decorative_cover: Table of Contents

- [About the Project](#star2-about-the-project)
- [Roadmap](#compass-roadmap)
- [Contributing](#wave-contributing)
- [FAQ](#grey_question-faq)
- [License](#warning-license)
- [Contact](#handshake-contact)
- [Acknowledgements](#gem-acknowledgements)

## :star2: About the Project

<details>
  <summary>Tech Stack</summary>
  <ul>
    <li><a href="https://www.docker.com">Docker + Alpine Linux</a></li>
    <li><a href="https://www.gnu.org/software/bash/">Bash Scripting</a></li>
  </ul>
</details>

### :dart: Features

- **Lightweight Images**: Migrated from Ubuntu to Alpine Linux, reducing image size by over 90%.
- **Security**: Runs as a non-root user for enhanced container security.
- **Optimized**: Multi-command `RUN` instructions to minimize image layers.
- **ASCII Art**: Random quote selection rendered via `figlet`.

### :chart_with_upwards_trend: Optimization Results

| Feature | Before (Ubuntu) | After (Alpine) | Improvement |
| :--- | :--- | :--- | :--- |
| **Image Size** | 223 MB | **22 MB** | **~90% reduction** |
| **Security** | Root privileges | **Non-root user** | Better isolation |
| **Build Time** | Standard | **Layer caching** | Optimized layers |

## :toolbox: Getting Started

### :bangbang: Prerequisites

- Docker installed on your machine. <a href="https://docs.docker.com/get-docker/">Here</a>

```bash
docker --version
```

### :gear: Installation

Clone the repository:

```bash
git clone https://github.com/ovis22/docker-quotes.git
cd docker-quotes
```

### :running: Run Locally

1. Navigate to the desired variant directory:
```bash
cd starwars
# OR
cd polish-songs
```

2. Build the optimized Docker image:
```bash
docker build -t docker-quotes-starwars .
```

3. Run the container:
```bash
docker run --rm docker-quotes-starwars
```

## :compass: Roadmap

- [x] Create Star Wars variant  
- [x] Create Polish songs inspired variant  
- [x] Migrate to Alpine Linux (90% size reduction) 
- [x] Implement non-root user security (appuser)  
- [x] Add demo screenshot  
- [ ] Add more quotes and variants  

## :wave: Contributing

<a href="https://github.com/ovis22/docker-quotes/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=ovis22/docker-quotes" />
</a>

Contributions are always welcome!

Feel free to open an issue or submit a pull request.

## :grey_question: FAQ

- **Do I need anything other than Docker to run this project?**  
  No. As long as you have Docker installed, you can build and run all variants locally.

- **How do I add my own quote variant?**  
  Create a new folder with a Dockerfile and a Bash script based on the existing variants, then build and run it the same way as `starwars` or `polish-songs`.

## :warning: License

Distributed under the MIT License. See the LICENSE file for more information.

## :handshake: Contact

Dominik Łakomy - [dominiklakomy00@gmail.com](mailto:dominiklakomy00@gmail.com)

Project Link: [https://github.com/ovis22/docker-quotes](https://github.com/ovis22/docker-quotes)

## :gem: Acknowledgements

- [figlet](http://www.figlet.org/)
- [FIGlet fonts (Star Wars font)](http://www.jave.de/figlet/fonts.html)
- [Docker documentation](https://docs.docker.com/)
- [Alpine Linux](https://alpinelinux.org/) – for the lightweight base image that enabled a 90% size reduction.
