// component {

//     // Get all customers
//     function getAllCustomers() {
//         return entityLoad("Customers");
//     }

//     // Get a customer by ID
//     function getCustomerById(required numeric customerId) {
//         return entityLoadByPK("Customers", customerId);
//     }

//     // Create a new customer
//     function createCustomer(required string firstName, required string lastName, required string email, string phone, ) {
//         var customer = entityNew("Customers");
//         // Use the arguments scope to access passed parameters
//         customer.firstName = firstName;
//         customer.lastName = lastName;
//         customer.email = email;
//         customer.phone = phone;

//         entitySave(customer);
//         return { "status" = "success", "id" = customer.id };
//     }

//     // Update an existing customer
//     function updateCustomer(required numeric customerId, string firstName, string lastName, string email, string phone) {
//         var customer = entityLoadByPK("Customers", customerId);
        
//         if (!structIsEmpty(customer)) {
//             if (structKeyExists(arguments, "firstName")) {
//                 customer.firstName = firstName;
//             }
//             if (structKeyExists(arguments, "lastName")) {
//                 customer.lastName = lastName;
//             }
//             if (structKeyExists(arguments, "email")) {
//                 customer.email = email;
//             }
//             if (structKeyExists(arguments, "phone")) {
//                 customer.phone = phone;
//             }

//             entitySave(customer);
//             return { "status" = "success", "message" = "Customer updated" };
//         } else {
//             return { "status" = "error", "message" = "Customer not found" };
//         }
//     }

//     // Delete a customer
//     function deleteCustomer(required numeric customerId) {
//         var customer = entityLoadByPK("Customer", customerId);
        
//         if (!structIsEmpty(customer)) {
//             entityDelete(customer);
//             return { "status" = "success", "message" = "Customer deleted" };
//         } else {
//             return { "status" = "error", "message" = "Customer not found" };
//         }
//     }

// }
