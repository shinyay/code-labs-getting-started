# Code Labs Tutorial Getting Started

Getting Started with Code Labs Formated Tutorial

- [Codepabs Template](https://github.com/shinyay/codelabs-markdown-template)

## Description
Based on the following repository
- [googlecodelabs/tools](https://github.com/googlecodelabs/tools)

### Prerequisite
- Go
- Node.js v10+ and npm
- claat (open source command line tool maintained by Google)

#### Cloud Shell
Go and Node has been already installed.

- [Google Cloud Shell](https://shell.cloud.google.com/?hl=en_US&fromcloudshell=true&show=terminal)


#### Go
- [Download Site](https://golang.org/dl/)

##### Linux
```
$ wget https://golang.org/dl/go1.15.linux-amd64.tar.gz
$ sudo tar -C /usr/local -xzf  go1.15.linux-amd64.tar.gz
$ set --universal -x GOPATH $HOME/go
$ set --universal -x GOROOT /usr/local/go
$ vim ~/.config/fish/config.fish

$PATH:/usr/local/go/bin 
$PATH:$HOME/go/bin
```

##### Macbook
```
$ brew install go
$ export GOPATH=$HOME/Go
$ export GOROOT=/usr/local/opt/go/libexec
$ export PATH=$PATH:$GOPATH/bin
$ export PATH=$PATH:$GOROOT/bin
```

#### Node.js & npm
- `sudo apt update`
- `sudo apt install -y nodejs npm`

#### claat
- [claat](https://github.com/googlecodelabs/tools/tree/master/claat#install)
  - `go get -u -v -x github.com/googlecodelabs/tools/claat`

## Demo

## Features

- feature:1
- feature:2

## Requirement

## Usage
### Update Summodule
```
$ cd tools
$ git submodule update -i
```

### Install gulp
```
$ cd site
$ nvm use v12.22.1
$ npm install
$ npm install -g gulp-cli
```

### Codelab scenario
```
$ mkdir codelabs
$ cd codelabs
```

### Claat for Codelab scenario
#### Pull Claat Container Image
```
$ docker pull shinyay/claat
```

#### Export HTML from Markdown
```
$ docker run --rm -it -v (pwd):/app shinyay/claat export -o labs <TARGET_MARKDOWN>
```

#### Serve published HTML
```
$ cd <GENERATED_HTML_DIR>
$ docker run --rm -it -v (pwd):/app -p 9090:9090 shinyay/claat serve -addr 0.0.0.0:9090
```

### Codelab site
- Build Site Distribution
- Containerize Site Distribution

#### Customize Codelabs Site
Icon for Categories
```
$ cp images/icons/* tools/site/app/images/icons/
$ echo "@include codelab-card(['spring'], $color-google-blue, 'spring.svg');" >> tools/site/app/styles/_categories.scss
$ echo "@include codelab-card(['quarkus'], $color-google-blue, 'quarkus.svg');" >> tools/site/app/styles/_categories.scss
$ echo "@include codelab-card(['micronaut'], $color-google-blue, 'micronaut.svg');" >> tools/site/app/styles/_categories.scss
```

Views for Tags
```
$ cp -pr views/cloudrun tools/site/app/views/
$ rm -fr tools/site/app/views/vslive
```

#### gulp for Codelab site/cloudrun 
```
$ cd tools/site/
$ gulp serve --codelabs-dir codelabs/labs
```

#### gulp for distribution
```
$ gulp clean
$ gulp serve:dist --codelabs-dir codelabs/labs
```

#### Containerization
```
$ docker build -t shinyay/codelab:0.0.1 .
$ docker run --rm -d -p 8080:8080 shinyay/codelab:0.0.1
```

## Installation

## Licence

Released under the [MIT license](https://gist.githubusercontent.com/shinyay/56e54ee4c0e22db8211e05e70a63247e/raw/34c6fdd50d54aa8e23560c296424aeb61599aa71/LICENSE)

## Author

[shinyay](https://github.com/shinyay)
