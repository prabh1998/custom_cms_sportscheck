<?php
require_once '../load.php';
confirm_logged_in();

//TODO: 15-20min
//1. Refere how we build the add user page
//2. Check the db and find out how the form looks like
//3. Build the form

$brand_table = 'tbl_brand';
$brand = getAll($brand_table);

if(isset($_POST['submit'])){
    $product = array(
        'image'=>$_FILES['image'],
        'name'=> trim($_POST['name']),
        'price'=> trim($_POST['price']),
        'description'=> trim($_POST['description']),
        'brand'=> trim($_POST['genList']),
    );

    $result = addProduct($product);
    $message = $result;
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
</head>
<body>
    <?php echo !empty($message) ? $message:''?>
    <form action="admin_addproduct.php" method="post" enctype="multipart/form-data">
        <label>Product Image:</label><br>
        <input type="file" name="image" value=""><br><br>
    
        <label>Product Name:</label><br>
        <input type="text" name="name" value=""> <br><br>

        <label>Product Price:</label><br>
        <input type="text" name="price" value=""> <br><br>

        <label>Product Description:</label><br>
        <textarea name="description"></textarea> <br><br>

        <label>Brand:</label><br>
        <select name="genList">
            <option>Please select a category:</option>
            <?php while($row = $brand->fetch(PDO::FETCH_ASSOC)): ?>
            <option value="<?php echo $row['brand_id'] ?>"><?php echo $row['brand_name'];?></option>
            <?php endwhile; ?>
        
        </select>
        <br><br>

        <button type="submit" name="submit">Add Product</button>
    </form>
    
</body>
</html>