FROM mcr.microsoft.com/dotnet/core/sdk:3.1
ENV PATH=$PATH:/usr/share/dotnet/sdk/2.1.818/:/root/.dotnet/tools
RUN mkdir /src
ADD . /src
RUN dotnet tool install --global dbup-cli
COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT [ "docker-entrypoint.sh" ]
