FROM jfloff/alpine-python

LABEL "com.github.actions.name"="action-cpp-lint"
LABEL "com.github.actions.description"="Run style check for C++ codes."
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="black"

LABEL "repository"="https://github.com/CyberZHG/github-action-cpp-lint.git"
LABEL "homepage"="https://github.com/CyberZHG/github-action-cpp-lint"
LABEL "maintainer"="CyberZHG <CyberZHG@gmail.com>"

RUN pip install --upgrade pip
RUN pip install cpplint

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
