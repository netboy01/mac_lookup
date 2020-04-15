FROM ubuntu
RUN apt -y update && \
    apt -y install curl && \
    apt -y install jq
COPY ./lookup_script.sh /
RUN chmod +x /lookup_script.sh
ENTRYPOINT ["/lookup_script.sh"]
