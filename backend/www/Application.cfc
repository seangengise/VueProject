component {
    this.name = 'demoApp';
    this.mappings[ '/framework' ] = expandPath( '../www/framework' );
    this.mappings[ "/controllers" ] = expandPath( "../www/controllers" );
    this.mappings[ "/models" ] = expandPath( "../www/models" );

    // Database connection configuration
    // Ensure the DSN name matches what you have in ColdFusion Administrator
    this.datasource = "myApp"; // Must match the DSN name in ColdFusion Admin

    // ORM settings
    this.ormEnabled = true;
    this.ormSettings = {
        dbCreate = "update",  // Use "create" if you want to drop and recreate the schema
        eventHandling = true,  // Enable event handling for ORM
        flushAtRequestEnd = false, // Avoid auto-flushing
        logSQL = true,  // Enable SQL logging for debugging
        dialect = "org.hibernate.dialect.MySQL8Dialect",  // Correct dialect
        hbm2ddl = "update"  // or "create" to force schema update/creation
    };
    this.ormSettings.hibernateSettings = {
        logSQL = true,
        hbm2ddl = "update"  // or "create" to force schema update/creation
    };
    this.debug = true;

    function _get_framework_one() {
        if ( !structKeyExists( request, '_framework_one' ) ) {
            request._framework_one = new framework.one( {
                decodeRequestBody = true,
                reloadApplicationOnEveryRequest = true,
                database="demoapp", // Set your DB name here
                datasource="myApp", // Your DSN from CF Admin
                dialect = "MySQL8Dialect", // Dialect for Hibernate to connect
                routes =[ { "$GET/customers" = "/customers/getAllCustomers" }  // Get all customers
                // { "$GET/customers/{customerId}" = "/customers/getCustomerById/id/:customerId" },  // Get customer by ID
                // { "$POST/customers" = "/customers/createCustomer" },  // Create customer
                // { "$PATCH/customers/{customerId}" = "/customers/updateCustomer/id/:customerId" },  // Update customer
                // { "$DELETE/customers/{customerId}" = "/customers/deleteCustomer/id/:customerId" }  // Delete customer
                ]
            } );
        }
        return request._framework_one;
    }

    // delegation of lifecycle methods to FW/1:
    function onApplicationStart() {
        ORMReload(); 
        return _get_framework_one().onApplicationStart();
    }
    function onError( exception, event ) {
        return _get_framework_one().onError( exception, event );
    }
    function onRequest( targetPath ) {
        return _get_framework_one().onRequest( targetPath );
    }
    function onRequestEnd() {
        return _get_framework_one().onRequestEnd();
    }
    function onRequestStart( targetPath ) {
        return _get_framework_one().onRequestStart( targetPath );
    }
    function onSessionStart() {
        return _get_framework_one().onSessionStart();
    }
}
