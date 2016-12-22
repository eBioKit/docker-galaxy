############################################################
# Dockerfile to build Galaxy container image for the eBioKit
# Based on bgruening/galaxy-stable
############################################################

# Set the base image to bgruening/galaxy-stable
FROM bgruening/galaxy-stable

# File Author / Maintainer
MAINTAINER Rafael Hernandez <ebiokit@gmail.com>

################## BEGIN INSTALLATION ######################
#Update the proxy info in the galaxy.ini file
RUN sed -i 's/#filter-with = proxy-prefix/filter-with = proxy-prefix/' /etc/galaxy/galaxy.ini

##################### INSTALLATION END #####################

