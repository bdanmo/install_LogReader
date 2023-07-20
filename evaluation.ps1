$LogReader = Test-Path -Path "C:\Users\Public\Desktop\LogReader.exe"
if ($LogReader -eq $false) {
    Write-Host "LogReader.exe is not in C:\Users\Public\Desktop"
    exit 1
} elseif ($LogReader -eq $true) {
    Write-Host "LogReader.exe is in C:\Users\Public\Desktop"
    exit 0
}