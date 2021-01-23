FROM docker:dind

# Update apk
RUN apk update 

# curl
RUN apk --no-cache add curl

# java
RUN apk add openjdk11

# gradle
RUN wget https://services.gradle.org/distributions/gradle-6.8.1-bin.zip
RUN unzip -d /opt gradle-6.8.1-bin.zip
ENV PATH="/opt/gradle-6.8.1/bin:${PATH}"

# node
RUN apk add nodejs
RUN apk add npm

# cdk
RUN npm install aws-cdk -g

# python
RUN apk add --no-cache python3 py3-pip

# aws cli v2
ENV GLIBC_VER=2.31-r0
RUN apk --no-cache add \
    binutils \
    curl \
    && curl -sL https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub \
    && curl -sLO https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VER}/glibc-${GLIBC_VER}.apk \
    && curl -sLO https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk \
    && apk add --no-cache \
    glibc-${GLIBC_VER}.apk \
    glibc-bin-${GLIBC_VER}.apk \
    && curl -sL https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip \
    && unzip awscliv2.zip \
    && aws/install \
    && rm -rf \
    awscliv2.zip \
    aws \
    /usr/local/aws-cli/v2/*/dist/aws_completer \
    /usr/local/aws-cli/v2/*/dist/awscli/data/ac.index \
    /usr/local/aws-cli/v2/*/dist/awscli/examples \
    && apk --no-cache del \
    binutils \
    && rm glibc-${GLIBC_VER}.apk \
    && rm glibc-bin-${GLIBC_VER}.apk \
    && rm -rf /var/cache/apk/*

# WORKDIR /hrp-assets
COPY hrp-init.sh .
RUN chmod +x ./hrp-init.sh
# ENTRYPOINT ["sh", "./hrp-init.sh"]