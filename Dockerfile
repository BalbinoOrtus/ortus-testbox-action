# Container image that runs your code
FROM ortussolutions/commandbox

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
COPY tests /tests

ENTRYPOINT ["/entrypoint.sh"]