function setup_docker --description "Configure and start Docker with user permissions"
    echo "Configuring Docker..."

    # Enable the Docker service
    echo "Enabling Docker service..."
    sudo systemctl enable --now docker

    # Add current user to docker group
    echo "Adding user to docker group..."
    sudo usermod -aG docker $USER

    echo "Docker setup complete!"
    echo "Note: You may need to log out and back in for group changes to take full effect."
end
