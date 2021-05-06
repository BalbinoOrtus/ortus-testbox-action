# Container image that runs your code
FROM ortussolutions/commandbox

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
COPY tests /github/workspace/tests
RUN chmod +x /tests

ENTRYPOINT ["/entrypoint.sh"]