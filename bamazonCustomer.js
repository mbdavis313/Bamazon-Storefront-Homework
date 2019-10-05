// bamazonCustomer.js, Use JavaScript to get data.
// CTRL ~ to open a Terminal
// mysql.createConnection connects to server
// run all npm init install mysql
// run node bamazonCustomer.js
// stop node process via CTRL+C

const mysql = require("mysql");
const inquirer = require("inquirer");
const connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "3537_Saville",
  database: "bamazon_db"
});
// *** STANDARD - HOW TO CONNECT TO MYSQL ***
connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
   queryAllProducts();
   startQuery();
  
});
// *** STANDARD - DISPLAY OF DATA ***
function queryAllProducts() {
  connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    for (var i = 0; i < res.length; i++) {
      console.log(res[i].item_id + " | " + res[i].product_name + " | " + res[i].department_name + " | " + res[i].price + " | " + res[i].stock_quantity);
      console.log("-----------------------------------");
    }
      });
}
function startQuery() {
  // Create a "Prompt" with a series of questions.
inquirer
.prompt([
  // Here we create a basic text prompt.
  // **** KEYS are type, message and name *****
  {
    type: "input",
    message: "What is the ID of the product that you would like to buy?",
    name: "productID"
  },

  {
    type: "input",
    message: "What quantity of the product that you would like to buy?",
    name: "productQuantity"
  },
   
])
// **** Below is a Standard PROMISE ****
.then(function(inquirerResponse) {
  console.log(inquirerResponse);
  console.log(inquirerResponse.productID);
});

}
// Check Product Stock
function checkStock(id, quantity) {
// Make SQL query that selects the stock quantity from the specific ID that was passed.
// Use connection.query to execute the query.
// Console.log the result of the connection.query.
}
