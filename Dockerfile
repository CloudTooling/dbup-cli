FROM mcr.microsoft.com/dotnet/core/sdk:2.2
ENV PATH=$PATH:/usr/share/dotnet/sdk/2.1.818/:/root/.dotnet/tools
RUN mkdir /src
WORKDIR /src
ADD . /src
RUN dotnet tool install --global dbup-cli

ENTRYPOINT [ "dbup" ]
