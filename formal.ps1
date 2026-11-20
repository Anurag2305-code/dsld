# formal.ps1 - run all SymbiYosys proofs
$root = "C:\Users\Anurag\oss-cad-suite"
$env:PATH = "$root\bin;$root\lib;$env:PATH"
$env:YOSYSHQ_ROOT = $root

$Here = Split-Path -Parent $MyInvocation.MyCommand.Path
Push-Location $Here
try {
    $jobs = @(
        "formal\alu.sby",
        "formal\counter_straight.sby",
        "formal\counter_twisted.sby",
        "formal\counter_static.sby"
    )
    $failed = @()
    foreach ($job in $jobs) {
        $out = & sby -f $job 2>&1 | Out-String
        $last = ($out -split "`r?`n" | Where-Object { $_ -match 'DONE \(' } | Select-Object -Last 1)
        Write-Host "$job => $last"
        if ($last -notmatch 'PASS') { $failed += $job }
    }
    if ($failed.Count -eq 0) { Write-Host "`nALL PROOFS PASSED" } else { Write-Host "`nFAILED: $($failed -join ', ')" }
}
finally {
    Pop-Location
}
