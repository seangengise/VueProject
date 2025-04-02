<cfscript>
    var customerData = "SELECT * FROM customers";
    qCustomer = queryExecute(customerData);
    writeDump(qCustomer);
    
    // app=createObject("component", "Application");
    // if(isDefined("app.ormEnabled")){
    //     writeOutput("<h1>ORM is enabled in this application</h1>")
    // }else{
    //     writeOutput("<h1>ORM is not enalbed in this application (defualt).</h1>")
    // }
    
</cfscript>