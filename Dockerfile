############################################################
# Dockerfile to build Galaxy container image for the eBioKit
# Based on bgruening/galaxy-stable
# Version 0.1 June 2017
# TODO LIST:
# - Change startpoint script to copy the default "custom_tools.xml file"
############################################################

# Set the base image to bgruening/galaxy-stable
FROM bgruening/galaxy-stable

# File Author / Maintainer
MAINTAINER Rafael Hernandez <ebiokit@gmail.com>

################## BEGIN INSTALLATION ######################
#Update the proxy info in the galaxy.ini file
RUN sed -i 's/#filter-with = proxy-prefix/filter-with = proxy-prefix/' /etc/galaxy/galaxy.ini

##################### INSTALLATION END #####################
