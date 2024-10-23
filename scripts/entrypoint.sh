#!/bin/bash

#enlazamos el archivo de configuracion
#ln -s /etc/apache2/sites-available/alvaro.com.conf /etc/apache2/sites-enabled/alvaro.com.conf
#ln -s /etc/apache2/sites-available/herrero.com.conf /etc/apache2/sites-enabled/herrero.com.conf
a2ensite alvaro.com.conf
a2ensite herrero.com.conf
a2ensite seguro.net.conf
# habilitamos el modulo ssl
a2enmod ssl

#desenlazamos el archivo de configuracion default
#rm /etc/apache2/sites-enabled/000-default.conf
a2dissite 000-default.conf

#reiniciamos la configuracion apache
service apache2 reload

#ejecutamos apache 
apache2ctl -D FOREGROUND
