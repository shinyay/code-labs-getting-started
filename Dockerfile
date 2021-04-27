FROM nginx:alpine
COPY nginx/default.conf /etc/nginx/conf.d/configfile.template
COPY tools/site/dist /usr/share/nginx/html
COPY tools/site/codelabs/labs /usr/share/nginx/html/codelabs
ENV PORT 8080
ENV HOST 0.0.0.0
EXPOSE 8080
CMD sh -c "envsubst '\$PORT' < /etc/nginx/conf.d/configfile.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
