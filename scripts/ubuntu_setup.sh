# This is suitable for ubuntu
# install fish
sudo apt-get install fish
chsh -s $(which fish) 

# install vim, need to download vim_config.sh first
sudo apt-get install vim
sh vim_config.sh

# Add my pub-key to server for ssh connection
myPub="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC4XarWxgthi5HUuWbkcKfsaaV0Ho/EzDOpV5vcTfViEudgimdfwEg/k83pSm7+j3LF6IYehtqeIgTi5aSdeZ4VDFQArQQGEby4oLq5taFKrit/mJCLC880y1Y1ybkUtwzVEhjFmw6nPhxfRSVd1OaosTqo+MWZBHjN1IIBaBs33bflwMP17ZJ3Rn7AkdWtHrVC9sVEMajV8et1MRbX5NF4GqwnY3qujlEtu8HWeFGlsocoaeNDteXCbsp3f6NsdxzvUyGJemPfs+cfZQ5EFmxTRpf2R3uYFDuO5VYbSqxRxPIZXwVEO7XiytIATiq2nmY02zjB99GoTMo9Oe1tx8mZDOQh/d22oat3/3rtEkYtuxs4heB2lfX0AueiK140RGhcdNgzssKfEi0B+LzPPeEjARsiuzADsZbUENwaOkIWFYdfg/BZtfuNGUSH5g8Vu1ehRP2y2tJVp90irad/Olomr81DRyZZf+vYFvdrUqeNlq2+MIuMlMQq0qspFKz4hNL4k0xqJRF/+FUPduGN5LFCMDvhggffH8+DV8wFgIdeDWa/BiuMmvHhCmONGGE8ya57lA9sM1TG1NEma8iJkXQysDRByLbnkg0UJCPg0Pd+Kn+KPIk9uqVPqMQddCBtxbt3nxNt0x9CM0V6e4x7qLYetnOnZkHi0me+haIHvALtYQ== raychen0411@gmail.com"
mkdir -p ~/.ssh
echo $myPub >> ~/.ssh/authorized_keys
