FROM mediawiki:1.35.2

RUN curl https://extdist.wmflabs.org/dist/extensions/MsUpload-REL1_36-d0a0667.tar.gz -o MsUpload.tar.gz && \
    tar -xzf MsUpload.tar.gz -C extensions && \
    rm MsUpload.tar.gz && \
    chown www-data:www-data extensions/MsUpload -R

RUN curl https://extdist.wmflabs.org/dist/extensions/TemplateStyles-REL1_36-e548bf1.tar.gz -o TemplateStyles.tar.gz && \
    tar -xzf TemplateStyles.tar.gz -C extensions && \
    rm TemplateStyles.tar.gz && \
    chown www-data:www-data extensions/TemplateStyles -R

RUN curl https://extdist.wmflabs.org/dist/extensions/intersection-REL1_36-789511a.tar.gz -o intersection.tar.gz && \
    tar -xzf intersection.tar.gz -C extensions && \
    rm intersection.tar.gz && \
    chown www-data:www-data extensions/intersection -R

COPY wiki.ini /usr/local/etc/php/conf.d/wiki.ini
