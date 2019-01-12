echo "#######"
echo "#"
echo "# Please Using Ehternet"
echo "#"
echo "#######"

sudo pacman-mirrors -i -c China -m rank
sudo pacman -Syyu
sudo pacman -S gvim git pacaur yay --needed

####
#
# note that vim does not support "+ register
#
####

# you may add the following using vim

### emmm how to add text into sudo file...
