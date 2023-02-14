echo "Reverting installation..."

rm /etc/apt/sources.list
mv data/sources.list.bak /etc/apt/sources.list
apt update

echo "Done reverting installation!"