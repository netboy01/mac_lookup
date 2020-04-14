FROM ubuntu
RUN apt -y update && \
    apt -y install curl && \
    apt -y install jq
COPY ./script.sh /
RUN chmod +x /script.sh
ENTRYPOINT ["/script.sh"]
