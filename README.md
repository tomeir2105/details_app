# details_app Ansible Deployment

Deploys a simple Flask application (`details_app`) on a Debian/Ubuntu server using Ansible. The app runs as a systemd service and exposes a `/health` endpoint.

## Features

- Creates a user `details_app`
- Installs Python3, pip, and app dependencies
- Copies and sets up the Flask app
- Configures systemd service
- Performs health check after reboot

## Prerequisites

- A Debian/Ubuntu-based remote server
- SSH access with a private key
- Ansible installed locally

## Setup

1. Clone this repo:

```bash
git clone https://github.com/YOUR-USERNAME/details_app_ansible_deploy.git
cd details_app_ansible_deploy
