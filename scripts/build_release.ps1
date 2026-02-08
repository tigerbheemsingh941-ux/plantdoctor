# Build Release APK with Obfuscation and Tree Shaking
Write-Host "Building release APK with obfuscation..."
flutter build apk --release --obfuscate --split-debug-info=./debug-info

# Check if build was successful
if ($?) {
    Write-Host "Build successful!"
    $apkPath = "build\app\outputs\flutter-apk\app-release.apk"
    if (Test-Path $apkPath) {
        $size = (Get-Item $apkPath).Length / 1MB
        Write-Host "APK Size: $([math]::Round($size, 2)) MB"
    }
} else {
    Write-Host "Build failed."
    exit 1
}
