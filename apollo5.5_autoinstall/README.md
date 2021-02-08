<h2> Note </h2>

This is for apollo5.5 auto installation.

If you want to run or test in a car or HIL environment, you need to install Apollo Kernel and drivers such as ESD CAN.

Refer to Apollo Auto official site. (https://github.com/ApolloAuto)

<br>

<h2> How to run </h2>

At ${HOME}

``` bash
git clone https://github.com/dooadex/Auto-Installation.git
cd Auto-Installation/apollo5.5_autoinstall/
./install_pre-requisites.sh
reboot
./install_apollo5.5.sh
```

