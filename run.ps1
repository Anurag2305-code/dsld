# run.ps1 - compile and simulate with Icarus Verilog (OSS CAD Suite)
$root = "C:\Users\Anurag\oss-cad-suite"
$env:PATH = "$root\bin;$root\lib;$env:PATH"
$env:YOSYSHQ_ROOT = $root

$Here = Split-Path -Parent $MyInvocation.MyCommand.Path
Push-Location $Here
try {
    New-Item -ItemType Directory -Force -Path build | Out-Null
    $src = @("rtl\hybrid_ring_counter.v", "rtl\alu_core.v", "rtl\alu_top.v", "tb\tb_alu_top.v")
    Write-Host "== compile =="
    & iverilog -g2005 -Wall -o build\sim.vvp @src
    if ($LASTEXITCODE -ne 0) { Write-Host "COMPILE FAILED"; exit 1 }
    Write-Host "== simulate =="
    & vvp build\sim.vvp
    exit $LASTEXITCODE
}
finally {
    Pop-Location
}
