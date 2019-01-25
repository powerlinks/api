PowerLinks Online Documentation
=============

Overview
------------

- [Basic Description]($basic)
- [Docker](#docker)

### Basic

This project represents the public facing documentation for PowerLinks. The result can be found at

`https://docs.powerlinks.com`

In order to update the live documentation, you must first commit local changes to files in the project's 'source' directory.

Then Docker can be used to build the application and push it to a separate branch in Github called gh-pages. This is source for the live documentation, 
as the contents of the site are hosted by GitHub Pages (https://pages.github.com/).

### Docker

To run this in a Docker container you'll just need to run the following

```bash
$ GIT_USERNAME=<your username> GIT_PASSWORD=<your password> docker-compose up
```

This will build the image and run the app. Output will be logged to the terminal.

The inclusion of your Github username and password is necessary in order for the Docker container to push to our private
Github repository successfully.
