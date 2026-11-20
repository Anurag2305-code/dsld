# synth.ps1 - generic synthesis + area report with Yosys
$root = "C:\Users\Anurag\oss-cad-suite"
$env:PATH = "$root\bin;$root\lib;$env:PATH"
$env:YOSYSHQ_ROOT = $root

$Here = Split-Path -Parent $MyInvocation.MyCommand.Path
Push-Location $Here
try {
    New-Item -ItemType Directory -Force -Path build | Out-Null
    $log = & yosys -p "read_verilog rtl/hybrid_ring_counter.v rtl/alu_core.v rtl/alu_top.v; hierarchy -top alu_top; synth -top alu_top; stat" 2>&1
    $log | Out-File -FilePath build\synth.log -Encoding UTF8
    Write-Host "== design hierarchy (incl. submodules) =="
    $start = ($log | Select-String -Pattern '=== design hierarchy ===' | Select-Object -Last 1).LineNumber
    if ($start) { $log[($start + 1)..([Math]::Min($start + 40, $log.Count - 1))] }
}
finally {
    Pop-Location
}
