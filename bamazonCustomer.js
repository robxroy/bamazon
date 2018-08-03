var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 8889,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  printCatalog();
  purchaseItem();
});

function printCatalog() {
    connection.query("SELECT * FROM products", function(err, res) {
      console.log(`\n Trumporium Emoluments: Presidential Bargains \n`)
      for (var i = 0; i < res.length; i++) {
        console.log(`${res[i].item_id}:  ${res[i].product_name} -- $${res[i].price}`);
      }
    });
  }

  function purchaseItem(){
    inquirer.prompt([
      {
        name:"item",
        type: "input",
        message: "What is the ID of the product you desire?"
      },
    {
      name: "item",
      type: "input",
      message: "How many units of this product do you wish to purchase?"

    }
    ])

  }

