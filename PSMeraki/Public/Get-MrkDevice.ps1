function Get-MrkDevice {
    <#
    .SYNOPSIS
    Retrieves the details of a Meraki device 
    .DESCRIPTION
    Retrieves the details of a Meraki device 
    .EXAMPLE
    Get-MrkDevice -networkID X_112233445566778899 -Serial Q2PN-AB12-V3X6
    .PARAMETER networkID
    specify a networkID, find an id using get-MrkNetworks
    #>
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][String]$networkID,
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][String]$Serial
    )
    $request = Invoke-MrkRestMethod -Method GET -ResourceID ('/networks/' + $networkID + '/devices/' + $Serial)
    return $request
}