FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /app
ADD *.csproj ./
RUN dotnet restore

ADD . .
RUN dotnet publish -c Release -o publish

FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
COPY --from=build app/publish .

RUN dotnet Authentication.dll --urls=http://*:$PORT