FROM datalust/seq:latest

# Accept EULA (required)
ENV ACCEPT_EULA=Y

# Optional: Set initial admin password (change this!)
# ENV SEQ_FIRSTRUN_ADMINPASSWORD=YourSuperStrongPasswordHere

# If you want no auth for testing (not recommended long-term)
# ENV SEQ_FIRSTRUN_NOAUTHENTICATION=True

# Workaround attempt: Run as root explicitly if needed (Seq image is already root-ish)
USER root

# The entrypoint is already set in the base image, so no need to override unless testing