<cfquery datasource="yourDatasourceName">
    INSERT INTO users (name, email)
    VALUES ('John Doe', 'johndoe@example.com');
</cfquery>

<cfquery datasource="yourDatasourceName">
    INSERT INTO users (name, email)
    VALUES ('Jane Smith', 'janesmith@example.com');
</cfquery>

<cfquery datasource="yourDatasourceName">
    INSERT INTO users (name, email)
    VALUES ('Alice Johnson', 'alice@example.com');
</cfquery>

<cfoutput>
    Seed data inserted successfully.
</cfoutput>
