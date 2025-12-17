<div align="center">

<h1>Dockerized random ASCII quote generators (Star Wars & Polish-inspired) using figlet.</h1>
<p>docker-quotes is a small collection of Docker containers that print random quotes as ASCII art using figlet. It currently includes a Star Wars themed variant and a Polish song-inspired variant, each with its own Dockerfile and Bash script.</p>
<p>
  <img src="https://img.shields.io/github/languages/top/ovis22/docker-quotes" alt="Top language">
      <a href="http://www.figlet.org/">
    <img src="https://img.shields.io/badge/ASCII%20art-FIGlet-blueviolet?style=flat" alt="FIGlet"></a>
        <a href="https://docker.com/">
      <img src="https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=fff" alt="Docker"></a>
      <a href="https://opensource.org/licenses/MIT">
      <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT">
    </a>
  
  </p>
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
  <summary>Server</summary>
  <ul>
    <li><a href="https://www.docker.com">Docker + Ubuntu</a></li>
  </ul>
</details>

### :dart: Features

- Random quote selection using Bash arrays
- Uses figlet for ASCII art output
- Simple Docker build & run workflow

## :toolbox: Getting Started

### :bangbang: Prerequisites
[![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=fff)](#)
- Docker installed on your machine. <a href="https://docs.docker.com/get-docker/">Here</a>

```docker --version```

### :gear: Installation

Clone the repository:

```git clone https://github.com/ovis22/docker-quotes.git```
```cd docker-quotes```

### :running: Run Locally

Clone the project
```git clone https://github.com/ovis22/docker-quotes.git```


Go to the project directory

```cd docker-quotes```


Go to the Star Wars variant

```cd starwars```


Build the Docker image

```docker build -t docker-quotes-starwars .```


Run the container

```docker run --rm docker-quotes-starwars```


## :compass: Roadmap

- [x] Create Star Wars variant  
- [x] Create Polish songs inspired variant  
- [ ] Add demo screenshot  
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

Distributed under the MIT License. See the LICENSE file for more information. [web:2]

## :handshake: Contact

ovis22  

Project Link: https://github.com/ovis22/docker-quotes

## :gem: Acknowledgements

- [figlet](http://www.figlet.org/)
- [FIGlet fonts (Star Wars font)](http://www.jave.de/figlet/fonts.html)
- [Docker documentation](https://docs.docker.com/) 
