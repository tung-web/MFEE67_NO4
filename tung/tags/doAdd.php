<?php
require_once "./connect.php";
require_once "./utilities.php";

// if (isset($_GET["id"])) {
//   alertGoTo("請從正常管道進入", "./index.php");
//   exit;
// }


$name = $_POST["name"];



if ($name == "") {
  alertAndBack("請輸入姓名");
  exit;
}

$sql = "INSERT INTO `tags` ( `name`) VALUES ( ?);";
$values = [$name];




try {
  $stmt = $pdo->prepare($sql);
  $stmt->execute($values);
} catch (PDOException $e) {
  echo "錯誤: {{$e->getMessage()}}";
  exit;
}

alertGoTo("新增資料成功", "./index.php");