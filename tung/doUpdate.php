<?php
// 修改會員主要程式
require_once "./connect.php";
require_once "./Utilities.php";

// if(!isset($_POST["id"])){
//   alertGoTo("請從正常管道進入", "./");
//   exit;
// }

$id = $_POST["id"];
$name = $_POST["name"];
$password = $_POST["password"];
$email = $_POST["email"];
$set = [];
$values = [":id"=>$id];

if($name !== "") {
  $set[] = "`name` = :name";
  $values[":name"] = $name;
}
if($password !== "") {
  $password = password_hash($password, PASSWORD_BCRYPT);
  $set[] = "`password` = :password";
  $values[":password"] = $password;
}
if(isset($_FILES["myFile"]) && $_FILES["myFile"]["error"] == 0){
  $img = null;
  $timestamp = time();
  $ext = pathinfo($_FILES["myFile"]["name"], PATHINFO_EXTENSION);
  $newFileName = "{$timestamp}.{$ext}";
  $file = "../uploads/{$newFileName}";
  if(move_uploaded_file($_FILES["myFile"]["tmp_name"], $file)){
    $img = $newFileName;
  }
  $set[] = "`img` = :img";
  $values[":img"] = $img;
}


if(count($set) == 0){
  alertAndBack("沒有修改任何欄位");
}

$sql = "UPDATE `users` SET " .implode(", ", $set) ." WHERE `id` = :id";

try {
  $stmt = $pdo->prepare($sql);
  $stmt->execute($values);
} catch (PDOException $e) {
  echo "錯誤: {{$e->getMessage()}}";
  exit;
}

alertGoTo("修改資料成功", "./update.php?id={$id}");