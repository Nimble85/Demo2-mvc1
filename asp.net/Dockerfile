FROM microsoft/dotnet:2.1-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80

FROM microsoft/dotnet:2.1-sdk AS build
WORKDIR /src
COPY ["BS1/BS1.csproj", "BS1/"]
RUN dotnet restore "BS1/BS1.csproj"
COPY . .
WORKDIR "/src/BS1"
RUN dotnet build "BS1.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "BS1.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "BS1.dll"]