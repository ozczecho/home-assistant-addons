ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

ARG VZDUCH_VERSION


RUN wget -O vzduch.tar.xz https://github.com/ozczecho/vzduch-dotek/archive/refs/tags/"${VZDUCH_VERSION}".tar.gz \
    && tar xvzf vzduch.tar.xz -C /usr/src/ \
    && cd /usr/src/vzduch-dotek-"${VZDUCH_VERSION}"

WORKDIR /usr/src/vzduch-dotek-"${VZDUCH_VERSION}"

RUN dotnet restore vzduch-dotek.sln
RUN dotnet publish vzduch-dotek.sln -c release -o /app -r linux-x64 --self-contained true --no-restore /p:PublishTrimmed=false /p:PublishSingleFile=false

# final stage/image
FROM $BUILD_FROM

LABEL Mike <ozczecho@yahoo.com>

COPY --from=build /app .
EXPOSE 5353

COPY data/run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]