# EcoPotential in-situ metadata catalogue &middot; ![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg) [![Build Status](https://travis-ci.org/starlab-bcn/pycsw-quality-profile.svg?branch=master)](https://travis-ci.org/starlab-bcn/pycsw-quality-profile)
```EcoPotential in-situ metadata catalogue``` provides an implementation an OGC CSW catalogue using the Python library PyCSW with some modifications to meet the EcoPotential requirements.

## Installation

### Docker
Use the file docker-compose.yml to start the container.

```py
git clone https://github.com/starlab-bcn/ecopotential-insitu-metadata-catalogue

cd ecopotential-insitu-metadata-catalogue

sh scripts/docker-start.sh

```

### Source code

Install the library [PyCSW](http://pycsw.org/) and copy the content of the folder ```src``` into the PyCSW installation folder (It will overwrite some files).

## New features

The following features have been implemented in the core of the PyCSW library. In addition, a set of shell scripts have been created to perform different tasks:

- Harvest from a remote catalogue. This script can be used to create a crontab and harvest data periodically: 
```sh
sh scripts/harvest_source.sh <url_of_CSW_endpoint>
```

- Create database table

```sh

```

## Contributing

### Developing

New functionalities are welcome. To begin developing:

```
git clone https://github.com/starlab-bcn/ecopotential-insitu-metadata-catalogue
git checkout -b my-dev-branch
```
...where you should give your branch a more descriptive name than "my-dev-branch"

Once you've made your changes (and tests,...), make that pull request.

## Credits:
Developed for the ECOPOTENTIAL project.

## Contributors:
 * [Jordi Prados](http://github.com/jordiprados)
