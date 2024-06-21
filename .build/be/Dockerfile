# See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

# Depending on the operating system of the host machines(s) that will build or run the containers, the image specified in the FROM statement may need to be changed.
# For more information, please see https://aka.ms/containercompat

# FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
# WORKDIR /app
# EXPOSE 80
# EXPOSE 443

# FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
# WORKDIR /src

# # Copy and restore the main project
# COPY ["be/toiec-web/toeic-web.csproj", "toiec-web/"]
# RUN dotnet restore "toiec-web/toeic-web.csproj"

# # Copy and restore the test project
# COPY ["be/UnitTest/UnitTest.csproj", "UnitTest/"]
# RUN dotnet restore "UnitTest/UnitTest.csproj"

# # Copy the remaining source code
# COPY be/toiec-web toiec-web/
# COPY be/UnitTest UnitTest/

# # Build the main project
# WORKDIR "/src/toiec-web"
# RUN dotnet build "toeic-web.csproj" -c Release -o /app/build

# # Build and run tests
# WORKDIR "/src/UnitTest"
# RUN dotnet build "UnitTest.csproj" -c Release -o /app/build/tests

# # Ensure the results directory exists
# RUN mkdir -p /app/build/test-results

# # Run tests and capture console logs
# RUN dotnet test "UnitTest.csproj" --no-build --logger:console || true

# # Publish the main project
# WORKDIR "/src/toiec-web"
# RUN dotnet publish "toeic-web.csproj" -c Release -o /app/publish /p:UseAppHost=false

# FROM base AS final
# WORKDIR /app
# COPY --from=publish /app/publish .
# ENTRYPOINT ["dotnet", "toeic-web.dll"]

# Stage 1: Build the application
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src

# Copy csproj and restore as distinct layers
COPY .build/be/toiec-web/*.csproj ./
RUN dotnet restore

# Copy the main application code
COPY .build/be/toiec-web/ ./

# Build the application in release mode
RUN dotnet build -c Release --no-restore

# Run tests and publish test results
RUN dotnet test "UnitTest.csproj" --no-build --logger:trx --results-directory /app/build/test-results

# Publish the application
RUN dotnet publish "toeic-web.csproj" -c Release -o /app/publish --no-restore /p:UseAppHost=false

# Stage 2: Create the runtime image
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime
WORKDIR /app
EXPOSE 80
EXPOSE 443

# Copy built artifacts from the 'build' stage
COPY --from=build /app/publish .

# Entrypoint for the container
ENTRYPOINT ["dotnet", "toeic-web.dll"]
