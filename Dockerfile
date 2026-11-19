# Partimos de la imagen oficial de Apache
FROM httpd:latest

# Copiamos los sitios web al contenedor
COPY empresa1/ /usr/local/apache2/htdocs/empresa1/
COPY empresa2/ /usr/local/apache2/htdocs/empresa2/
COPY empresa3/ /usr/local/apache2/htdocs/empresa3/
COPY empresa4/ /usr/local/apache2/htdocs/empresa4/

# Copiamos la configuración de los VirtualHosts
COPY httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf

# Incluir la configuración de VirtualHosts en el httpd.conf
RUN echo "Include conf/extra/httpd-vhosts.conf" >> /usr/local/apache2/conf/httpd.conf
