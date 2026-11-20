# tools.ps1 - puts the OSS CAD Suite toolchain on PATH for this session
$root = "C:\Users\Anurag\oss-cad-suite"
$env:YOSYSHQ_ROOT = $root
$env:PATH = "$root\bin;$root\lib;$env:PATH"
$env:SSL_CERT_FILE = "$root\etc\cacert.pem"
$env:PYTHON_EXECUTABLE = "$root\lib\python3.exe"
