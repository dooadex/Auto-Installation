<h2> Note </h2>

This is for apollo5.5 auto installation.

If you want to run or test in a car or HIL environment, you need to install Apollo Kernel and drivers such as ESD CAN.

Refer to Apollo Auto official site. (https://github.com/ApolloAuto)

<br>

<h2> How to run </h2>

Check wherther you have nvidia-driver or not.
If you don't have, then follow below.

```bash
sudo lshw -C display
ubuntu-drivers devices
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt-get install nvidia-driver-<recommended>
```

At ${HOME}

``` bash
git clone https://github.com/dooadex/Auto-Installation.git
cd Auto-Installation/apollo5.5_autoinstall/
./install_pre-requisites.sh
sudo reboot now
./install_apollo5.5.sh
```

