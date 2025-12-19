function setup_tailscale --description "Configure and start Tailscale with SSH enabled"
    echo "Configuring Tailscale..."

    # Enable the service
    echo "Enabling Tailscale service..."
    sudo systemctl enable --now tailscaled

    # Connect with SSH enabled
    echo "Connecting to Tailscale network with SSH enabled..."
    sudo tailscale up --ssh

    echo "Tailscale setup complete!"
end
