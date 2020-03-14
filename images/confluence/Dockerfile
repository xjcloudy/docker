from cptactionhank/atlassian-confluence:6.9.0

USER root
#cracked jar 
ADD atlassian-extras-decoder-v2-3.3.0.jar $CONF_INSTALL/confluence/WEB-INF/lib/
ADD crack.* /var/crack/
#license gen
ADD confluence_keygen.jar /var/crack/
#change xmx 、xms value
ENV CUSTOM_JVM_MEM 3g
RUN sed -i 's/1024m/${CUSTOM_JVM_MEM}/g' "${CONF_INSTALL}/bin/setenv.sh"
# 漏洞修复 https://paper.seebug.org/884/?spm=a2c4e.11153940.blogcont698056.11.5a896b475Xjv4b
RUN rm -f $CONF_INSTALL/confluence/WEB-INF/atlassian-bundled-plugins/widgetconnector-3.1.0.jar
ADD widgetconnector-3.1.4.jar $CONF_INSTALL/confluence/WEB-INF/atlassian-bundled-plugins/