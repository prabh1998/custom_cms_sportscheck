<?php
class Product
{

    private $conn;

    // Note: update table names, column names in here
    public $product_table               = 'tbl_products';
    public $brand_table               = 'tbl_brand';
    public $product_brand_linking_table = 'tbl_products_brand';

    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function getProduct()
    {
        //TODO:write the SQL query that returns all products from the tbl_products table
        // $query = 'SELECT * FROM '.$this->product_table;


        //TODO:write the SQL query that returns all products with its sport
        $query = 'SELECT m.*, GROUP_CONCAT(g.brand_name) as brand_name FROM ' . $this->product_table . ' m';
        $query .= ' LEFT JOIN ' . $this->product_brand_linking_table . ' link ON link.product_id = m.product_id';
        $query .= ' LEFT JOIN ' . $this->brand_table . ' g ON link.brand_id = g.brand_id ';
        $query .= ' GROUP BY m.product_id';

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }

    public function getProductByBrand($brand){
        $query = 'SELECT m.*, GROUP_CONCAT(g.brand_name) as brand_name FROM ' . $this->product_table . ' m';
        $query .= ' LEFT JOIN ' . $this->product_brand_linking_table . ' link ON link.product_id = m.product_id';
        $query .= ' LEFT JOIN ' . $this->brand_table . ' g ON link.brand_id = g.brand_id ';
        $query .= ' GROUP BY m.product_id';
        $query .= ' HAVING brandt_name LIKE "%'.$brand.'%"';

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }

    public function getProductByID($id)
    {
        $query = 'SELECT m.*, GROUP_CONCAT(g.brand_name) as brand_name FROM ' . $this->product_table . ' m';
        $query .= ' LEFT JOIN ' . $this->product_brand_linking_table . ' link ON link.product_id = m.product_id';
        $query .= ' LEFT JOIN ' . $this->brand_table . ' g ON link.brand_id = g.brand_id ';
        $query .= ' WHERE m.product_id=' . $id;
        $query .= ' GROUP BY m.product_id';

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }
}
