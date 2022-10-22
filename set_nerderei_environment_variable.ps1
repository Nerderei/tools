# Add NERDEREI Environment variable to grant access to speficic tools e.g. pico OpenOCD
$path = $PSScriptRoot
$path = $path.Replace("\", "/")

Write-Output "Set user environment variable 'NERDEREI_TOOLS' to '$path'"

[Environment]::SetEnvironmentVariable("NERDEREI_TOOLS", $path,[EnvironmentVariableTarget]::User)

# Add CMake, Ninja and OpenOCD to the global Path Environment Variable
$cmake_path = Join-Path $PSScriptRoot "windows\CMake\bin"
$cmake_path = $cmake_path.Replace("\", "/")

$ninja_path = Join-Path $PSScriptRoot "windows\Ninja"
$ninja_path = $ninja_path.Replace("\", "/")

$openocd_path = Join-Path $PSScriptRoot "windows\openocd-0.11.0-5\bin"
$openocd_path = $openocd_path.Replace("\", "/")

Write-Output "Add cmake path '$cmake_path' to user 'Path' environment variable"
Write-Output "Add ninja path '$ninja_path' to user 'Path' environment variable"
Write-Output "Add OpenOCD path '$openocd_path' to user 'Path' environment variable"

[Environment]::SetEnvironmentVariable(
    "Path",
    [Environment]::GetEnvironmentVariable("Path",
    [EnvironmentVariableTarget]::User) + ";$cmake_path;$ninja_path;$openocd_path",
    [EnvironmentVariableTarget]::User)