$location = "C:\GitRepo\DBDeployments\DeployMe\DeployMe_Migration"
$instance = 'debthedba\sql2019'
$database = 'DeployMe_Migration'

Set-Location $location

# Set the order of folders to rotate through if the folder exists

# Schemas
# Tables
# Foreign Keys
# Functions
# Views
# StoredProcs

# Confirm that the deploy schema and migration log table are created
$deployfile = "$location\Schemas\Deploy.Schema.sql"
$migrationlogfile = "$location\tables\deploy.MigrationLog.sql"

Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $deployfile -AbortOnError  
Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $migrationlogfile -AbortOnError 

$a = Get-ChildItem $location

If ($a.Name -eq "Schemas") {    
    $schemalocation = $location + '\Schemas'

    write-host "Start: Running schema scripts from $schemalocation"

    Get-childitem $schemalocation | ForEach-Object {
        $file = $schemalocation + '\' + $_.Name
        $insertLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'START')"
        $updateLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'END')"

        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $insertLogQuery -AbortOnError
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $file -AbortOnError
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $updateLogQuery -AbortOnError
    }

    write-host "End: Running schema scripts from $schemalocation"
}

If ($a.Name -eq "Tables") {    
    $tablelocation = $location + '\Tables'

    write-host "Start: Running table scripts from $tablelocation"

    Get-childitem $tablelocation | ForEach-Object {
        $file = $tablelocation + '\' + $_.Name
        $insertLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'START')"
        $updateLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'END')"

        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $insertLogQuery -AbortOnError
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $file -AbortOnError
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $updateLogQuery -AbortOnError
    }

    write-host "End: Running table scripts from $tablelocation"
}


If ($a.Name -eq "ForeignKeys") {    
    $tablelocation = $location + '\ForeignKeys'

    write-host "Start: Running foreign key scripts from $tablelocation"

    Get-childitem $tablelocation | ForEach-Object {
        $file = $tablelocation + '\' + $_.Name
        $insertLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'START')"
        $updateLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'END')"

        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $insertLogQuery -AbortOnError
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $file -AbortOnError
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $updateLogQuery -AbortOnError
    }

    write-host "End: Running foreign key scripts from $tablelocation"
}


If ($a.Name -eq "Functions") {    
    $tablelocation = $location + '\Functions'

    write-host "Start: Running function scripts from $tablelocation"

    Get-childitem $tablelocation | ForEach-Object {
        $file = $tablelocation + '\' + $_.Name
        $insertLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'START')"
        $updateLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'END')"

        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $insertLogQuery -AbortOnError
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $file -AbortOnError
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $updateLogQuery -AbortOnError
    }

    write-host "End: Running function scripts from $tablelocation"
}

If ($a.Name -eq "Views") {    
    $tablelocation = $location + '\Views'

    write-host "Start: Running view scripts from $tablelocation"
    Get-childitem $tablelocation | ForEach-Object {
        $file = $tablelocation + '\' + $_.Name
        $insertLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'START')"
        $updateLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'END')"

        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $insertLogQuery -AbortOnError
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $file -AbortOnError
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $updateLogQuery -AbortOnError
    }

    write-host "End: Running view scripts from $tablelocation"
}


If ($a.Name -eq "StoredProcs") {    
    $tablelocation = $location + '\StoredProcs'

    write-host "Start: Running stored proc scripts from $tablelocation"
    Get-childitem $tablelocation | ForEach-Object {
        $file = $tablelocation + '\' + $_.Name
        $insertLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'START')"
        $updateLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'END')"

        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $insertLogQuery -AbortOnError
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $file -AbortOnError
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $updateLogQuery -AbortOnError
    }

    write-host "End: Running stored proc scripts from $tablelocation"
}

If ($a.Name -eq "Data") {    
    $tablelocation = $location + '\Data'

    write-host "Start: Running data scripts from $tablelocation"
    Get-childitem $tablelocation | ForEach-Object {
        $file = $tablelocation + '\' + $_.Name
        $insertLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'START')"
        $updateLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'END')"

        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $insertLogQuery -AbortOnError
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $file -AbortOnError
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $updateLogQuery -AbortOnError
    }

    write-host "End: Running data scripts from $tablelocation"
}