try {
    #copy LogReader.exe from CWD to C:\Users\Public\Desktop
    Copy-Item -Path .\LogReader.exe -Destination "C:\Users\Public\Desktop\LogReader.exe"
    #check if LogReader.exe is in C:\Users\Public\Desktop
    $LogReader = Test-Path -Path "C:\Users\Public\Desktop\LogReader.exe"
    if ($LogReader -eq $false) {
        Write-Host "LogReader.exe is not in C:\Users\Public\Desktop"
        exit 1
    } elseif ($LogReader -eq $true) {
        Write-Host "LogReader.exe is in C:\Users\Public\Desktop"
        exit 0
    }
} catch {
    Write-Output $_.Exception.Message
}
