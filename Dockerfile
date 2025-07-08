# Start from a minimal base image
FROM alpine:3.12

# Install a sample package (for demo purposes)
RUN apk add --no-cache curl

# Security best practice: switch to non-root user
USER nobody

# Run a sample command (replace as needed)
CMD ["curl", "--help"]
