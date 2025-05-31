#!/bin/bash
KEY_PATH="$HOME/.ssh/id_ansible"

# Generate SSH key if it doesn't exist
if [ ! -f "$KEY_PATH" ]; then
  ssh-keygen -t rsa -b 4096 -f "$KEY_PATH" -N ""
fi

# Copy the public key to each node using password authentication
for node in node1 node2 node3 node4; do
  ssh-copy-id -i "${KEY_PATH}.pub" docker@"$node"
done

echo "SSH keys copied. You should now be able to ssh without a password using $KEY_PATH"
