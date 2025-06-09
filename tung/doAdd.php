<?php
// 新增會員主要程式
require_once "../connect.php";
require_once "../Utilities.php";

// if (!isset($_POST["email"])) {
//   alertGoTo("請從正常管道進入", "./index.php");
//   exit;
// }

$email = $_POST["email"];
$password = $_POST["password"];
$name = $_POST["name"];
$id = $_POST["id"];

// if ($email == "") {
//   alertAndBack("請輸入信箱");
//   exit;
// };

// if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
//   alertAndBack("請輸入信箱");
//   exit;
// }

// if ($password == "") {
//   alertAndBack("請輸入密碼");
//   exit;
// }
// ;
// $passwordLength = strlen($password);
// if ($passwordLength < 5 || $passwordLength > 20) {
//   alertAndBack("請輸入密碼");
//   exit;
// }

// $password = password_hash($password, PASSWORD_BCRYPT);
//變數password加密過後再塞回去


$sql = "INSERT INTO `users` (`email`, `password`, `name`) VALUES (?, ?, ?);";
$values = [$email, $password, $name];

if (isset($_FILES["myFile"]) && $_FILES["myFile"]["error"] == 0) {
  $img = null;
  $timestamp = time();
  $ext = pathinfo($_FILES["myFile"]["name"], PATHINFO_EXTENSION);
  $newFileName = "{$timestamp}.{$ext}";
  $file = "../uploads/{$newFileName}";
  if (move_uploaded_file($_FILES["myFile"]["tmp_name"], $file)) {
    $img = $newFileName;
  }
  $sql = "INSERT INTO `users` (`email`, `password`, `name`, `img`) VALUES (?, ?, ?, ?);";
  $values = [$email, $password, $name, $img];
}




$sqlEmail = "SELECT COUNT(*) as count FROM `users` WHERE `email` = ?;";





// try {
//   $stmtEmail = $pdo->prepare($sqlEmail);
//   $stmtEmail->execute([$email]);
//   // $row = $stmtEmail->fetch(PDO::FETCH_ASSOC);
//   // $count = $row["count"];
//   $count = $stmtEmail->fetchColumn();
//   if ($count > 0) {
//     alertAndBack("此帳號已經使用過");
//     exit;
//   }

//   $stmt = $pdo->prepare($sql);
//   $stmt->execute($values);
// } catch (PDOException $e) {
//   echo "錯誤: {{$e->getMessage()}}";
//   exit;
// }

alertGoTo("新增資料成功", "./index.php");