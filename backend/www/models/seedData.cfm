<cfscript>
            // Array of fake customer data
            customers = [
                {firstName: "John", lastName: "Doe", email: "john.doe@example.com", phone: "123-456-7890"},
                {firstName: "Jane", lastName: "Smith", email: "jane.smith@example.com", phone: "234-567-8901"},
                {firstName: "Michael", lastName: "Johnson", email: "michael.johnson@example.com", phone: "345-678-9012"},
                {firstName: "Emily", lastName: "Davis", email: "emily.davis@example.com", phone: "456-789-0123"},
                {firstName: "Chris", lastName: "Brown", email: "chris.brown@example.com", phone: "567-890-1234"}
            ];
    
            // Loop through each customer and insert into the database
            for (customerData in customers) {
                if (arrayLen(entityLoad("Customers", {email: customerData.email})) == 0) {
                    newCustomer = entityNew("Customers");
                    newCustomer.setFirstName(customerData.firstName);
                    newCustomer.setLastName(customerData.lastName);
                    newCustomer.setEmail(customerData.email);
                    newCustomer.setPhone(customerData.phone);
                    entitySave(newCustomer);
                }
            }
    
            writeOutput("Fake customers seeded successfully.");
    </cfscript>
    