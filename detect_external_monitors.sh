sudo sed -i '/options nvidia-drm modeset=1/d' /lib/modprobe.d/nvidia-kms.conf
echo 'options nvidia-drm modeset=0' | sudo tee -a /lib/modprobe.d/nvidia-kms.conf
sudo update-initramfs -u
sudo reboot
