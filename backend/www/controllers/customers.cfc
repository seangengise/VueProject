component accessors=true {

      // Inject the model component into the controller (Customer component)
    property framework;

      // Action to get all customers
      function getAllCustomers() {
          var customers = entityLoad("customers"); // Access the injected service
          framework.renderData("json", customers, 200);

      } 

    // // Action to get a customer by ID
    // function getCustomerById() {
    //     var customerId = getArgument("customerId");
    //     var customer = customerService.getCustomerById(customerId);

    //     if (customer) {
    //         framework.renderData("json", customer, 200);
    //     } else {
    //         framework.renderData("json", { "status": "error", "message": "Customer not found" }, 404);
    //     }
    // }

    // // Action to create a new customer
    // function createCustomer() {
    //     writeDump(arguments)
    //     var firstName = arguments.firstName; // assuming the firstName is passed in the request
    //     var lastName = arguments.lastName;
    //     var email = arguments.email;
    //     var phone = arguments.phone;
    
    //     // Call the service to create a customer (uncomment when you integrate with the service)
    //     var result = customerService.createCustomer(firstName, lastName, email, phone);
    //     framework.renderData("json", result, 201); // 201 Created status

    //     // var result = customerService.createCustomer(firstName, lastName, email, phone, address);
    // }

    // // Action to update an existing customer
    // function updateCustomer() {
    //     var customerId = getArgument("customerId");
    //     var firstName = getArgument("firstName");
    //     var lastName = getArgument("lastName");
    //     var email = getArgument("email");
    //     var phone = getArgument("phone");

    //     var result = customerService.updateCustomer(customerId, firstName, lastName, email, phone);
    //     framework.renderData("json", result, 200); // 200 OK status
    // }

    // // Action to delete a customer
    // function deleteCustomer() {
    //     var customerId = getArgument("customerId");

    //     var result = customerService.deleteCustomer(customerId);
    //     framework.renderData("json", result, 200); // 200 OK status
    // }

}
