<cfset migrationVersion = 1> <!-- Track the migration version -->
<cfset migrationFile = "migrations/migration-version.txt"> <!-- File to track last migration -->

<!--- Check if migration version file exists, if not create it --->
<cfif NOT fileExists(migrationFile)>
    <cffile action="write" file="#migrationFile#" output="#migrationVersion#">
</cfif>

<!--- Read current migration version from the file --->
<cfset currentVersion = fileRead(migrationFile)>

<!--- If the current version is lower than the target version, apply the migration --->
<cfif currentVersion LT migrationVersion>
    <cfquery datasource="yourDatasourceName">
        <!--- Create users table if not exists --->
        CREATE TABLE IF NOT EXISTS users (
            id INT PRIMARY KEY AUTO_INCREMENT,
            name VARCHAR(255) NOT NULL,
            email VARCHAR(255) NOT NULL UNIQUE,
            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        );
    </cfquery>

    <!--- Update the migration version file --->
    <cffile action="write" file="#migrationFile#" output="#migrationVersion#">
    <cfoutput>Migration applied successfully. Version #migrationVersion#</cfoutput>
<cfelse>
    <cfoutput>Database is already up to date. No migration required.</cfoutput>
</cfif>
