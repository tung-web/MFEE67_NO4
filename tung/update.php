<?php
require_once "./connect.php";
require_once "./Utilities.php";


if (!isset($_GET["id"])) {
  alertGoTo("請從正常管道進入", "./index.php");
  exit;
}

$id = $_GET["id"];
$sql = "SELECT * FROM   `coupons` WHERE `is_valid` = 1 AND `id` = ?";


try {
  $stmt = $pdo->prepare($sql);
  $stmt->execute([$id]);
  $row = $stmt->fetch(PDO::FETCH_ASSOC);
  if (!$row) {
    alertGoTo("沒有這個使用者", "./");
  }
} catch (PDOException $e) {
  echo "錯誤: {{$e->getMessage()}}";
  exit;
}



?>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>修改會員表單</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
</head>

<body>
  <div class="container mt-3">
    <h1>修改優惠券</h1>
    <form action="./doUpdate.php" method="post" enctype="multipart/form-data">
      <input type="hidden" name="id" value="<?= $row["id"] ?>">
      <div class="input-group mb-1">
        <span class="input-group-text">優惠券名稱</span>
        <input value="<?= $row["name"] ?>" readonly name="email" type="text" class="form-control" placeholder="">
      </div>
      <div class="input-group mb-1">
        <span class="input-group-text">折扣碼</span>
        <input value="<?= $row["discount_code"] ?>" readonly name="email" type="text" class="form-control"
          placeholder="">
      </div>
      <div class="input-group mb-1">
        <span class="input-group-text">折扣數值</span>
        <input value="<?= $row["discount"] ?>" readonly name="email" type="text" class="form-control" placeholder="">
      </div>
      <div class="input-group mb-1">
        <span class="input-group-text">折扣類型</span>
        <input value="<?= $row["discount_type_id"] ?>" readonly name="email" type="text" class="form-control"
          placeholder="">
      </div>
      <div class="input-group mb-1">
        <span class="input-group-text">發行數量</span>
        <input value="<?= $row["quantity"] ?>" readonly name="email" type="text" class="form-control" placeholder="">
      </div>
      <div class="input-group mb-1">
        <span class="input-group-text">開始日期</span>
        <input value="<?= $row["start_date"] ?>" readonly name="email" type="text" class="form-control" placeholder="">
      </div>
      <div class="input-group mb-1">
        <span class="input-group-text">截止日期</span>
        <input value="<?= $row["end_date"] ?>" readonly name="email" type="text" class="form-control" placeholder="">
      </div>
      <div class="input-group mb-1">
        <span class="input-group-text">狀態</span>
        <input value="<?= $row["status_id"] ?>" readonly name="email" type="text" class="form-control" placeholder="">
      </div>
      <div class="input-group mb-1">
        <span class="input-group-text">使用範圍</span>
        <input value="<?= $row["usage_scope_id"] ?>" readonly name="email" type="text" class="form-control"
          placeholder="">
      </div>
      <div class="input-group mb-1">
        <span class="input-group-text">建立時間</span>
        <input value="<?= $row["created_at"] ?>" readonly name="email" type="text" class="form-control" placeholder="">
      </div>
      <div class="input-group mb-1">
        <span class="input-group-text">最後更新時間</span>
        <input value="<?= $row["updated_at"] ?>" readonly name="email" type="text" class="form-control" placeholder="">
      </div>
      

      <div class="mt-1 text-end">
        <button type="submit" class="btn btn-info btn-send">送出</button>
        <a class="btn btn-primary" href="./index.php">取消</a>
      </div>

    </form>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
    crossorigin="anonymous"></script>
</body>

</html>