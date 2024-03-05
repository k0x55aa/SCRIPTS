
$searchString = "Strings to search"

$regvalFound = Get-ChildItem -Path Registry::HKEY_CLASSES_ROOT -Recurse |
    Where-Object { $_.PSIsContainer -and $_.PSPath -match $searchString } |
    Select-Object -ExpandProperty PSPath
echo $regvalFound
