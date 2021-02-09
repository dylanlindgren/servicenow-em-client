FROM nginx
COPY html /usr/share/nginx/html
COPY scripts/sn-em-entrypoint.sh /sn-em-entrypoint.sh
RUN chmod 775 /sn-em-entrypoint.sh
ENV MODULE_ID=60c794c3db862010b7c8dacbd39619fe
ENV INSTANCE_NAME=dl3
VOLUME /usr/share/nginx/html/background.png
CMD /sn-em-entrypoint.sh && nginx -g 'daemon off;'