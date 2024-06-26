#See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

#Depending on the operating system of the host machines(s) that will build or run the containers, the image specified in the FROM statement may need to be changed.
#For more information, please see https://aka.ms/containercompat

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

# Build stage
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src

COPY ["be/toiec-web/toeic-web.csproj", "toiec-web/"]
RUN dotnet restore "toiec-web/toeic-web.csproj"

COPY be/toiec-web toiec-web/

WORKDIR "/src/toiec-web"
RUN dotnet build "toeic-web.csproj" -c Release -o /app/build

# Publish stage
FROM build AS publish
RUN dotnet publish "toeic-web.csproj" -c Release -o /app/publish /p:UseAppHost=false

# Final stage
FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "toeic-web.dll"]