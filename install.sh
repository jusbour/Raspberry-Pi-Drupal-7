#This shell script was compiled by Justin Harbour, <C> 2013.  License is granted to private individuals for personal use only.

#LAMP
sudo apt-get install tasksel
sudo tasksel install lamp-server

#Deal with a2enmod and restart apache
sudo a2enmod rewrite
sudo service apache2 restart

#Drupal7
sudo apt-get install drupal7
sudo cp /etc/drupal/7/apache2.conf /etc/apache2/mods-enabled/drupal.conf
sudo service apache2 restart

#That's it!  We're Done.  It should now be located at http://localhost/drupal7 or http://(your-local-ip)/drupal7
