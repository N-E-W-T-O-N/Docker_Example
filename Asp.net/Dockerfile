FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src

# Publish
COPY . ./
RUN --mount=type=cache,id=nuget,target=/root/.nuget/packages\
    dotnet build -c Release && dotnet publish -c Release --no-restore -o /out

 

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /app
COPY --from=build /out .
ENTRYPOINT ["dotnet", "CopilotChatWebApi.dll"]