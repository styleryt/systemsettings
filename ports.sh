sudo iptables -t nat -A PREROUTING -p tcp --dport 20 -j REDIRECT --to-port 8080
sudo iptables -t nat -A PREROUTING -p udp --dport 20 -j REDIRECT --to-port 8080
sudo iptables -t nat -L
sudo sh -c "iptables-save > /etc/iptables.rules"
sudo apt-get install iptables-persistent