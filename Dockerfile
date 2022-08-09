FROM  centos:latest
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/romofyi.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip romofyi.zip
RUN cp -rvf romofyi/* 
RUN rm -rf romofyi romofyi.zip
CMD ["/usr/bin/httpd","-D", "FOREGROUND"]
EXPOSE 80




# FROM  centos:latest
# RUN yum install -y httpd \
#  zip\
#  unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/koppee.zip  /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip koppee.zip
# RUN cp -rvf koppee/*
# RUN rm -rf koppee koppee.zip
# CMD ["/usr/bin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80 22