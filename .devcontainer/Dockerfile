# Use the official Arch Linux base image
FROM archlinux:latest

# Update the package list and install necessary packages
RUN pacman -Syu --noconfirm \
    && pacman -S --noconfirm \
        base-devel \
        curl \
        git \
    && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Create a non-root user and switch to it
RUN useradd -m vscode \
    && echo "vscode ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/vscode \
    && chmod 0440 /etc/sudoers.d/vscode

# Set the default user to vscode
USER vscode

# Set the working directory
WORKDIR /home/vscode

# Copy the entrypoint script
COPY entrypoint.sh /usr/local/bin/

# Run the entrypoint script
ENTRYPOINT ["entrypoint.sh"]

# Default command
CMD ["bash"]
