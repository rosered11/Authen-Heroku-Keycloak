FROM mcr.microsoft.com/dotnet/aspnet:5.0
ENV ASPNETCORE_ENVIRONMENT=Development

ADD publish/ app/
WORKDIR /app
CMD dotnet Authentication.dll --urls=http://*:$PORT