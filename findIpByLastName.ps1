<#
.Synopsis
   Short description
.DESCRIPTION
   Long description
.EXAMPLE
   Example of how to use this workflow
.EXAMPLE
   Another example of how to use this workflow
.INPUTS
   Inputs to this workflow (if any)
.OUTPUTS
   Output from this workflow (if any)
.NOTES
   General notes
.FUNCTIONALITY
   The functionality that best describes this workflow
#>
function get-computer {
    [CmdletBinding()]
    param (
        [string]$lastName
    )

    process {
        $shortName = "*" + $lastName.substring(0, 4) + "*"
        get-adcomputer -filter { name -like $shortName } -Properties ipv4address | Sort-object -Property IPv4Address -Descending | format-table Name, IPv4Address
    }
}

