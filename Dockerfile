FROM datalust/seq:latest

# Accept EULA (mandatory)
ENV ACCEPT_EULA=Y

# Set initial admin password (CHANGE THIS to something strong!)
ENV SEQ_FIRSTRUN_ADMINPASSWORD=YourSuperSecurePassword123!

# Optional: Disable auth for quick testing (not for prod!)
# ENV SEQ_FIRSTRUN_NOAUTHENTICATION=True

# Override entrypoint to run Seq binary directly (avoids seqsvr exec failure)
ENTRYPOINT ["/seqsvr/Seq"]

# Default command (run as server, use --storage /data if needed, but /data is default)
CMD ["--listen", "http://0.0.0.0:80"]