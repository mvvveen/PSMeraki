function Remove-MrkDevice {
    <#
    .SYNOPSIS
    Removes a new device, adds it to a network
    .DESCRIPTION
    blah 
    .EXAMPLE
    Remove-MrkDevice -Networkid X_111122223639801111 -Serial Q2XX-XXXX-XXXX
    .PARAMETER Networkid 
    id of a network (get-MrkNetworks)[0].id
    .PARAMETER SerialNr 
    Serial number of the physical device that is added to the network. 
    #>
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][String]$Networkid,
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][String]$SerialNr
    )
    $request = Invoke-MrkRestMethod -Method POST -ResourceID ('/networks/' + $Networkid + '/devices/' + $SerialNr + '/remove')
    return $request
}