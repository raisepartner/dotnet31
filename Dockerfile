FROM mcr.microsoft.com/dotnet/core/aspnet:3.1

ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
RUN apt-get update \
    && apt-get install --no-install-recommends -y libgfortran4 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
