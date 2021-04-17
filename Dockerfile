FROM mcr.microsoft.com/dotnet/aspnet:5.0
ENV ASPNETCORE_ENVIRONMENT=Development

ADD publish/ app/
WORKDIR /app
ENTRYPOINT ["dotnet", "Authentication.dll"]
