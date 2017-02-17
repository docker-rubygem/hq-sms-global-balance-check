FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.2

RUN gem install hq-sms-global-balance-check --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["hq-sms-global-balance-check"]
CMD ["--help"]
