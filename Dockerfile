#Stage 1

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /build
COPY . .
RUN dotnet restore
RUN dotnet publish -c Release -o /app
#Stage 2

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS final
WORKDIR /app
COPY --from=build /app .
ENTRYPOINT ["dotnet", "Lcw.Kubernetes.Test.App.dll"]