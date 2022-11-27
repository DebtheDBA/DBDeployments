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
$deployfile = "$location\Schemas\deploy.sql"
$migrationlogfile = "$location\tables\deploy.MigrationLog.sql"

Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $deployfile
Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $migrationlogfile

$a = Get-ChildItem $location

If ($a.Name -eq "Schemas") {    
    $schemalocation = $location + '\Schemas'
    Get-childitem $schemalocation | ForEach-Object {
        $file = $schemalocation + '\' + $_.Name
        $insertLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'START')"
        $updateLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'END')"

        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $insertLogQuery
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $file
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $updateLogQuery
    }
}

If ($a.Name -eq "Tables") {    
    $tablelocation = $location + '\Tables'
    Get-childitem $tablelocation | ForEach-Object {
        $file = $tablelocation + '\' + $_.Name
        $insertLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'START')"
        $updateLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'END')"

        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $insertLogQuery
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $file
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $updateLogQuery
    }
}


If ($a.Name -eq "ForeignKeys") {    
    $tablelocation = $location + '\ForeignKeys'
    Get-childitem $tablelocation | ForEach-Object {
        $file = $tablelocation + '\' + $_.Name
        $insertLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'START')"
        $updateLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'END')"

        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $insertLogQuery
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $file
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $updateLogQuery
    }
}
If ($a.Name -eq "Functions") {    
    $tablelocation = $location + '\Functions'
    Get-childitem $tablelocation | ForEach-Object {
        $file = $tablelocation + '\' + $_.Name
        $insertLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'START')"
        $updateLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'END')"

        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $insertLogQuery
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $file
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $updateLogQuery
    }
}

If ($a.Name -eq "Views") {    
    $tablelocation = $location + '\Views'
    Get-childitem $tablelocation | ForEach-Object {
        $file = $tablelocation + '\' + $_.Name
        $insertLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'START')"
        $updateLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'END')"

        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $insertLogQuery
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $file
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $updateLogQuery
    }
}


If ($a.Name -eq "StoredProcs") {    
    $tablelocation = $location + '\StoredProcs'
    Get-childitem $tablelocation | ForEach-Object {
        $file = $tablelocation + '\' + $_.Name
        $insertLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'START')"
        $updateLogQuery = "INSERT INTO deploy.MigrationLog (FileRun, LogAction) VALUES ('$_.Name', 'END')"

        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $insertLogQuery
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -InputFile $file
        Invoke-Sqlcmd -ServerInstance $instance -Database $database -Query $updateLogQuery
    }
}