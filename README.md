# dotnet-wasi-container-sample

A very basic demo using dotnet console app building as WASM and running with WASI as OCI image


## How to build/run

### Prerequisite
You need to have following installed on your system:

- WASMTIME runtime  (https://wasmtime.dev/)
- DOTNET 7 SDK. (https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu#2204)

## Build

First install the WASM SDK into your project. You can do that using ```dotnet``` cli:

```
dotnet add package Wasi.Sdk --prerelease
```

You will see that the project will be modified accordingly:

```
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net7.0</TargetFramework>
    <ImplicitUsings>enable</ImplicitUsings>
    <Nullable>enable</Nullable>
  </PropertyGroup>

  <ItemGroup>
    <PackageReference Include="Wasi.Sdk" Version="0.1.3-preview.10012" />
  </ItemGroup>

</Project>
```

Next, you can just build the application using dotnet cli:

```
dotnet build
```

This will generate a ```SampleApp.wasm``` file into the ```bin``` directory. Then we can run it:

```
wasmtime bin/Debug/net7.0/SampleApp.wasm
```

We should see the message ```Hello world``` printed. You can also run it with dontet cli:

```
dotnet run
```
Will generate the same output, but explicitly running it with ```wasmtime``` just gives you a bit more pleasure, isn't it?