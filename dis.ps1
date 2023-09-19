$res = Test-Path -Path "C:\Users\mesen\Desktop\my programs\experiments\change razer blade 14 2022 refresh rate\.config"
if (!$res) {
    New-Item -ItemType File -Path "C:\Users\mesen\Desktop\my programs\experiments\change razer blade 14 2022 refresh rate\.config" -Value $null
}
$battery_status = (Get-WmiObject Win32_Battery).BatteryStatus
if ($battery_status -eq 2) {
    Set-Content -Path "C:\Users\mesen\Desktop\my programs\experiments\change razer blade 14 2022 refresh rate\.config" -Value "OnPower" -NoNewline:$true
}
else {
    Set-Content -Path "C:\Users\mesen\Desktop\my programs\experiments\change razer blade 14 2022 refresh rate\.config" -Value "OnBattery" -NoNewline:$true
}