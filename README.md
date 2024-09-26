# ![Django DRF Example App](project-logo.png)

> ### Example Django DRF codebase containing real world examples (CRUD, auth, advanced patterns, etc) that adheres to the [RealWorld](https://github.com/gothinkster/realworld-example-apps) API spec.

<a href="https://thinkster.io/tutorials/django-json-api" target="_blank"><img width="454" src="https://raw.githubusercontent.com/gothinkster/realworld/master/media/learn-btn-hr.png" /></a>

This repo is functionality complete — PR's and issues welcome!

## Installation

1. Clone this repository: `git clone git@github.com:gothinkster/productionready-django-api.git`.
2. `cd` into `conduit-django`: `cd productionready-django-api`.
3. Install [pyenv](https://github.com/yyuu/pyenv#installation).
4. Install [pyenv-virtualenv](https://github.com/yyuu/pyenv-virtualenv#installation).
5. Install Python 3.5.2: `pyenv install 3.5.2`.
6. Create a new virtualenv called `productionready`: `pyenv virtualenv 3.5.2 productionready`.
7. Set the local virtualenv to `productionready`: `pyenv local productionready`.
8. Reload the `pyenv` environment: `pyenv rehash`.

If all went well then your command line prompt should now start with `(productionready)`.

If your command line prompt does not start with `(productionready)` at this point, try running `pyenv activate productionready` or `cd ../productionready-django-api`.

If pyenv is still not working, visit us in the Thinkster Slack channel so we can help you out.

## Automation

This project has a workflow that builds the Docker images, connects to the server, uploads the image, and stops and starts the Docker container.

1. set Github secrets and variables

   - go to `setting -> security -> Secrets and variables -> actions`

     | Variable                    | description                              | secret/variable |
     | --------------------------- | ---------------------------------------- | --------------- |
     | `DJANGO_SUPERUSER_EMAIL`    | the email for your superuser             | variable        |
     | `DJANGO_SUPERUSER_USER`     | the user for your superuser              | variable        |
     | `DJANGO_SUPERUSER_PASSWORD` | the password for your superuser          | variable        |
     | `IMAGE_PATH`                | the path to the images                   | variable        |
     | `SERVER_IP`                 | the ip of your server                    | secret          |
     | `SSH_PRIVATE_KEY`           | the ssh private key to connect to server | secret          |
     | `USER`                      | the user on the server                   | secret          |

1. when you push to your main branch, this action will be triggered and triggered from the main repo
