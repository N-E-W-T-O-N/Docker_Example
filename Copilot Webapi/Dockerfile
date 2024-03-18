# Use the official .NET SDK image as the base image
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

# Set the working directory inside the container
WORKDIR /source

# Copy the project files to the container
COPY CopilotChatWebApi/*.csproj .

# Restore dependencies
RUN dotnet restore --use-current-runtime

COPY . .

# Publish the API
RUN dotnet publish -c Release -o /app --use-current-runtime --self-contained false --no-restore

# Use the official ASP.NET Core runtime image as the base image for deployment
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime

# Set the working directory inside the container
WORKDIR /app

# Copy the published output from the build image to the runtime image
COPY --from=build /app .

# Expose port 40443
EXPOSE 40443

# Set the entry point for the container
ENTRYPOINT ["dotnet", "CopilotChatWebApi.dll"]
