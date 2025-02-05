FROM nginx:alpine

# Then we'll add the dependencies we need:
# - musl, libgcc, and libstdc++ are required by VS Code's server
# - git and gnupg are useful for remote development so that we
#   can commit and sign commits from within the container
# - and of course nginx itself
RUN apk add \
  musl \
  libgcc \
  libstdc++ \
  git \
  gnupg \
  nginx

# Finally, we'll remove nginx's default content and replace it
# with a symlink to our source code.

  RUN rm -rf /usr/share/nginx/html

  #Symlink to filesystem mount from nginx in devcontainer
  RUN ln -s /workspaces/html-css-showcase/final-project /usr/share/nginx/html

# Set `DEVCONTAINER` environment variable to help with orientation
ENV DEVCONTAINER=true


