# details_app_ansible_install

- This project contains an Ansible playbook to deploy a simple Flask application (details_app) as a systemd service on remote Debian-based Linux servers.

---

## Prerequisites

- Remote Debian-based Linux machines (hosts)
- Python 3 installed on remote machines
- Ansible installed on the control machine
- SSH access to remote machines as user 'docker'

---

## Important: SSH Key Setup

Before running the Ansible playbook, you must run the sshCopyKeys.sh script manually. This will generate an SSH key on the control node and copy the public key to all remote hosts.

This enables passwordless SSH authentication, which is required for the playbook to work.

How to run the script:

1. Run the following in your terminal:
   ./sshCopyKeys.sh

2. Enter the password for the 'docker' user when prompted (default is: docker).

---

## How to Run the Ansible Playbook

1. Clone this repository:
   git clone https://github.com/tomeir2105/details_app_ansible_install.git
   cd details_app_ansible_install

2. Ensure you have run the sshCopyKeys.sh script before proceeding.

3. Run the Ansible playbook:
   ansible-playbook -i inventory.ini playbook.yml --become

---

## What this Playbook Does

- Verifies that the remote hosts are Debian-based
- Creates the 'docker' user if it doesn’t exist
- Copies the Flask app source code to /home/docker/details_app
- Installs Python3, pip, and venv on the remote machines
- Sets up a Python virtual environment and installs dependencies
- Copies a systemd service file to manage the Flask app
- Enables and starts the details_app service
- Waits for the application to respond at http://localhost:8000/health
- Reboots the remote machine and verifies the service is still running afterward

---
