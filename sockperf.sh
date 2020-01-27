#Ubuntu - Install Git and other helpful tools
sudo apt-get install build-essential git autotools-dev automake autoconf -y

#From bash command line (assumes Git is installed)
git clone https://github.com/mellanox/sockperf
cd sockperf/
./autogen.sh
./configure --prefix=

#make is slower, may take several minutes
make

#make install is fast
sudo make install