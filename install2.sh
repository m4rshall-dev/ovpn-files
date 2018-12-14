clear
echo "Welcome to M4rshall's Auto Script"
echo "for OpsPrime VPN"
echo ""
echo "Please type the Website IP"
read -p "IP: " -e -i IP WebsiteIPMo
echo ""
echo "Please type the Server Prefix"
read -p "Prefix: " -e -i Prefix01 ServerPrefix
echo ""
echo "Please type the Database Username"
read -p "DB Username: " -e -i m4rshall DBUsername
echo ""
echo "Please type the Database Password"
read -p "DB Password: " -e -i m4rshall DBPassword
echo ""
echo "Okay, that's all I need. We are ready to setup your Panel now"
read -n1 -r -p "Press any key to continue..."

## Configure Website
sed -i "s/WebsiteIPMo/$WebsiteIPMo/g" ~/test.sh
sed -i "s/ServerPrefix/$ServerPrefix/g" ~/test.sh
sed -i "s/DBUsername/$DBUsername/g" ~/test.sh
sed -i "s/DBPassword/$DBPassword/g" ~/test.sh
sed -i "s/ServerPrefix/$ServerPrefix/g" /etc/openvpn/script/login.sh
sed -i "s/WebsiteIPMo/$WebsiteIPMo/g" /etc/openvpn/script/login.sh

service openvpn restart
service squid3 restart
