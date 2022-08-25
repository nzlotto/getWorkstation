######################################################################
#
# This script will lookup all of the computers a user has logged into
# and then will return a table listing those computers.  If the computers
# has a current IP address, that will also be listed.
#
# Author: Eric Haas 05/23/2019
#
######################################################################

set-executionpolicy -executionpolicy bypass -force
import-module activedirectory

Clear-Host
while($true){
write-host "You may hit CTRL+C at any time to quit"
$lastName = read-host "What is the last name of the person you are looking for?"
$nameLookup = "*" + $lastName.substring(0,4) + "*"
get-adcomputer -filter {name -like $nameLookup} -Properties ipv4address | Sort-object -Property IPv4Address -Descending|format-table Name, IPv4Address
}

# SIG # Begin signature block
# MIIFdgYJKoZIhvcNAQcCoIIFZzCCBWMCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQU990FLVPhI9Jmxazg5l/qrkiw
# 89ygggMOMIIDCjCCAfKgAwIBAgIQF+929f89IrtMcA7ntEcBezANBgkqhkiG9w0B
# AQUFADAdMRswGQYDVQQDDBJMb2NhbCBDb2RlIFNpZ25pbmcwHhcNMjExMjIzMjAx
# MTA3WhcNMjIxMjIzMjAzMTA3WjAdMRswGQYDVQQDDBJMb2NhbCBDb2RlIFNpZ25p
# bmcwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDbj4bGev952ORa7F8J
# mDGBtXeijbKICOim6xEpwnYlbcRH6WSYdzz+YBEh8lk4MpaIe1+JkRiEvucC7W1P
# I+YixZZTF10cwvMuJe1N4LdAYZY15kbb7FV1HIU6YZQHpSeAPOq1TExbD0W0Ap6F
# Juwhs7l3uuYhHaQubVAK7g9r/mgf06NIBoEm5sxAY1xvCLDDblzKMcRKuAr3r6rG
# wfmUbgSSp/UcZYML4+ybybut1/fjHGr80AkpVjAkyfs4gMEt5bIe+dGNL6NhdmHH
# VQWA9gKwiBwMCAv+wegPirp5ydpLWTaDk0t8/bJh5r7LtrvPdlXndbuAfZ06dJ3x
# 3//BAgMBAAGjRjBEMA4GA1UdDwEB/wQEAwIHgDATBgNVHSUEDDAKBggrBgEFBQcD
# AzAdBgNVHQ4EFgQUt3OOkH2n+SO/sEhb2YOS2a8AB1cwDQYJKoZIhvcNAQEFBQAD
# ggEBABHIPdbVLKBSdox9iqAKalGeSi2Ne+8RlHvVW2z7i3SR1Sp3wNBRmZk0KBXu
# VU/1ukQLYOQmMo/OaR5Djo3B7lRzZMX4YoxxvnGFYBmk+nnqOxYiaNmINJmDJsA5
# 4DInOilO8+dTDRzbmBdOgPd9gkn3xazs7ECxbz0uVe3idBeUs2nlQVTIiUi8/wkv
# yPhcpx8lrDoudFxzn3KrgYXMxZlWFLmfbagDSYqqUIsrLUPNxZodHNjp/nYHviOh
# QzXRe7UCgfLs5Vr85qXwFkjNzpk8gubmeRj2/6cRsPi4kiPfE1VIjPLWvtHmRlE7
# wxVkkRVxHhW6LTeLyVHeiyauQ9cxggHSMIIBzgIBATAxMB0xGzAZBgNVBAMMEkxv
# Y2FsIENvZGUgU2lnbmluZwIQF+929f89IrtMcA7ntEcBezAJBgUrDgMCGgUAoHgw
# GAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGC
# NwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQx
# FgQU44FW683N2W7agkcOhMt6E+Fsec8wDQYJKoZIhvcNAQEBBQAEggEAUFWom0zw
# 1HEqOVZIQzuAfMKOCxQJi7J+eTHGSjy/UCQMws6aSRMgnHoRAoV9WI+cWUyIJN5v
# m5oeG64AoSTy3Orx286zcvT/mFypDqqb05C14EgHc4jttljM+XPjALiRwAhE0otP
# rfqMaD9FuUg0182L0lssw7ZRWBl8RMbEahF38q4KHMgwqSp3gvxB3mdpkaAzZ+yk
# fhnuLFePZH9EaA5F6ORBOcPYI+qUlKSOCWhPs/MG3VS+zyH9mHCOYsW9Uov+GOuK
# L4D96biWhJ6S6CLBpUFI7YdXGb3qYkPJHDUZ77fwWfTM1q/plcc5JYNCZQ3j2Wlc
# aOi693GwFkGn0g==
# SIG # End signature block
