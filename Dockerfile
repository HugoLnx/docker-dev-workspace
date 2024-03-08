FROM dev-auth

# Set zsh as entrypoint
# ENTRYPOINT ["/usr/bin/zsh"]

RUN mkdir -p /root/workspace

WORKDIR /root/workspace

CMD ["tail", "-f", "/dev/null"]