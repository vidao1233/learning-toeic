FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src

# Copy and restore the main project
COPY ["be/toiec-web/toeic-web.csproj", "toiec-web/"]
RUN dotnet restore "toiec-web/toeic-web.csproj"

# Copy the remaining source code
COPY be/toiec-web toiec-web/

# Build the main project
WORKDIR "/src/toiec-web"
RUN dotnet build "toeic-web.csproj" -c Release -o /app/build

# Publish the main project
FROM build AS publish
RUN dotnet publish "toeic-web.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "toeic-web.dll"]
