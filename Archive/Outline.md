# Outline

- [Outline VPN](https://www.getoutline.org/)
- [How to Set Up Your Own VPN Server in 15 Minutes](https://habr.com/en/post/448108/)

## Apps

Download the **Outline Manager** app from the website.

Download the **Outline Client** app from the App Store.

## Amazon Lightsail

Create new Amazon Lightsail instance with Ubuntu 20.04 LTS.

Create new static IP for the instance.

## Setup

Change permissions on public key.

```zsh
chmod 600 LightsailDefaultKey-ap-southeast-1.pem
```

Connect to Lightsail instance.

```zsh
ssh -i ~/Documents/Security/LightsailDefaultKey-ap-southeast-1.pem ubuntu@54.179.96.74
```

Install software Updates.

```zsh
sudo apt-get Update
sudo apt-get Upgrade
```

When prompted, choose **Install the package manager’s version**.

Install Docker.

```zsh
sudo curl -sS https://get.docker.com/ | sh
sudo usermod -aG docker ubuntu
```

Logout and reconnect for server settings to apply.

```zsh
exit
```

Reconnect to Lightsail instance to install and configure Outline.

```zsh
sudo bash -c "$(wget -qO- https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh)"
```

Copy the server management key and open the designated ports.
