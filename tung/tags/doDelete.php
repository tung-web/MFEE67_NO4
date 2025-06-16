<?php
// 刪除會員主要程式
require_once "./connect.php";
require_once "./Utilities.php";




$id= $_GET["id"];
$sql = "UPDATE `users` SET `is_valid` = 0 WHERE `id` = ?";
$values=[$id];

try {
  $stmt = $pdo->prepare($sql);
//$stmt->execute($values)
  $stmt->execute([$id]);
  } catch (PDOException $e) {
  echo "錯誤: {{$e->getMessage()}}";
  exit;
}


alertGoTo("刪除資料成功", "./");