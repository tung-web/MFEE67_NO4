<?php
// 修改會員主要程式
require_once "./connect.php";
require_once "./Utilities.php";


$id = $_POST["id"];
$name = $_POST["name"];
$set = [];
$values = [":id"=>$id];

if($name !== "") {
  $set[] = "`name` = :name";
  $values[":name"] = $name;
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