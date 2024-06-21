FROM node:18-alpine

# Install runtime dependencies
RUN apk --no-cache add openjdk17-jre-headless bash curl nginx gettext sed grep

# Install Firebase CLI
ARG FIREBASE_TOOLS_VERSION
RUN test -n "$FIREBASE_TOOLS_VERSION" && yarn add firebase-tools@$FIREBASE_TOOLS_VERSION && yarn cache clean && yarn firebase --version

# Install Firebase emulators
RUN for I in $(yarn firebase --help | grep 'setup:' | awk '{ print $1 }'); do yarn firebase "$I"; done

# Set the working directory
WORKDIR /project

# Copy Firebase configuration files to the current working directory
COPY ./project/ ./

# Set up command
CMD yarn firebase emulators:start
