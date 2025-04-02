// File: controllers/customers.cfc
component {

    // GET request for /api/customers
    function get() {
        // You could fetch customer data from the database here
        return "List of customers from /api/customers";
    }

    // POST request for /api/customers
    function post() {
        // Logic to create a new customer
        return "New customer created via POST request to /api/customers";
    }
}
