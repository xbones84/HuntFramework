$Parameters = @{
    Param1 = 'Param1'
    Param2 = 'Param2'
}

#$SessionState = [System.Management.Automation.Runspaces.InitialSessionState]::CreateDefault()

$RunspacePool = [runspacefactory]::CreateRunspacePool(
    1,#Min Runspaces
    10000 #Max Runspaces
)

$RunspacePool.Open()

$jobs = New-Object System.Collections.ArrayList

1..50 | ForEach-Object { 
    $PowerShell = [powershell]::Create()
    $PowerShell.RunspacePool = $RunspacePool
    [void]$PowerShell.AddScript({
        Param (
            $Param1,
            $Param2
        )

        $ThreadID = [appdomain]::GetCurrentThreadId()

        Write-Verbose "ThreadID: Beginning $ThreadID" -Verbose
        $Sleep = Get-Random (1..5)

        [pscustomobject]@{
            Param1 = $param1
            Param2 = $param2
            Thread = $ThreadID
            ProcessID = $PID
            SleepTime = $Sleep
        }
        Start-Sleep -Seconds $Sleep
    })

    [void]$PowerShell.AddParameters($Parameters)

    $Handle = $PowerShell.BeginInvoke()
    $Temp = '' | Select-Object PowerShell, Handle

    $Temp.PowerShell = $PowerShell
    $Temp.Handle = $Handle
    [void]$Jobs.add($Temp)

    Write-Debug ("Available Runspaces in RunspacePool: {0}" -f $RunspacePool.GetAvailableRunspaces())
    Write-Debug ("Remaining Jobs: {0}" -f @($jobs | Where-Object {
        $_.handle.iscompleted -ne 'Completed'
    }).Count)
}

 

$Return = $Jobs | ForEach-Object {
    $_.PowerShell.EndInvoke($_.handle)
    $_.PowerShell.Dispose()
}


$Jobs.Clear()
$Return |  Group-Object ProcessID | Select-Object Count, Name
$Return | Group-Object Thread | Select-Object Count, Name
($Return).Count


 



