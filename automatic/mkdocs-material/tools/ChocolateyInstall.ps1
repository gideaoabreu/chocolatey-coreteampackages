﻿Update-SessionEnvironment

$version = '5.1.4'

$proxy = Get-EffectiveProxy
if ($proxy) {
  Write-Host "Setting CLI proxy: $proxy"
  $env:http_proxy = $env:https_proxy = $proxy
}
python -m pip install mkdocs-material==$version
