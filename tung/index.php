<?php

//  強制轉跳
// session_start();

//  if(!isset($_SESSION["user"])){
//    header("location: /users/login.php");
//    exit;
//  }
require_once "./connect.php";
require_once "./Utilities.php";


//分頁公式
$perPage = 10;
$page = intval($_GET["page"] ?? 1);
$pageStart = ($page - 1) * $perPage;
//分頁公式

$sql = "SELECT * FROM `coupons` WHERE  `is_valid` = 1 LIMIT $perPage OFFSET $pageStart";
$sqlAll = "SELECT * FROM `coupons` WHERE  `is_valid` = 1";

try {
  $stmt = $pdo->prepare($sql);
  $stmt->execute();
  $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
  $stmtAll = $pdo->prepare($sqlAll);
  $stmtAll->execute();
  $totalCount = $stmtAll->rowCount();
} catch (PDOException $e) {
  echo "錯誤: {{$e->getMessage()}}";
  exit;
}
$totalPage = ceil($totalCount / $perPage);

$sql = "SELECT COUNT(*) AS count FROM  coupons";
$stmt = $pdo->query($sql);
$result = $stmt->fetch(PDO::FETCH_ASSOC);
$rowCount = $result['count'];
$totalCount = ceil($rowCount / $perPage);




?>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>會員系統首頁</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
  <style>
    /* 導覽列 */
    /* 父容器使用 flex 排版，讓子元素水平排列 */
    .container-fluid {
      display: flex;
      /* RED: 讓內部元素水平排列 */
      height: 100vh;
      /* RED: 讓側邊欄和內容同高 */
    }

    nav.sidebar {
      width: 200px;
      /* RED: 側欄寬度 */
      background-color: #f8f9fa;
      border-right: 1px solid #ccc;
      padding: 20px;
      box-sizing: border-box;
    }

    .main-content {
      flex: 1;
      padding: 20px;
      overflow-y: auto;
    }


    h1 {
      color: rgba(203, 167, 219, 0.45);
      background-color: rgba(203, 167, 219, 0.1);
      border-radius: 50px;
      padding: 10px;
      display: inline-block;
    }

    .coupon-table {
      width: 100%;
      border-collapse: collapse;
      text-align: center;
      font-size: 14px;
    }

    .coupon-table th,
    .coupon-table td {
      ;
      padding: 8px 10px;
    }

    .coupon-table thead {
      background-color: #333;
      color: white;
    }

    .coupon-table tr:hover {
      background-color: #f9f9f9;
    }

    .coupon-table button,
    .coupon-table a {
      padding: 4px 8px;
      font-size: 13px;
    }

    .sidebar {
      height: 100vh;
      border-right: 1px solid #ccc;
    }

    .sidebar a {
      text-decoration: none;
      color: #333;
    }

    .sidebar a:hover {
      background-color: #eee;
      border-radius: 5px;

    }
  </style>
</head>

<body>

  <div class="container-fluid">

    <nav class="col-md-2 bg-light sidebar py-4">
      <h4 class="text-center">導覽選單</h4>
      <a href="luxury.html" class="d-block py-2 px-3">💎 豪華行程</a>
      <a href="budget.html" class="d-block py-2 px-3">🧳 小資玩法</a>
      <a href="phuquoc.html" class="d-block py-2 px-3">🏝 富國島</a>
      <a href="danang.html" class="d-block py-2 px-3">🏯 巴拿山</a>
      <a href="food.html" class="d-block py-2 px-3">🍜 美食推薦</a>
      <a href="culture.html" class="d-block py-2 px-3">⛩️ 宗教歷史</a>
    </nav>


    <div class="main-content mt-3">
      <h1>優惠券列表</h1>
      <div class="my-2 d-flex">
        <span class="me-auto"><?= $rowCount ?> 筆資料</span>
        <a class="btn btn-primary btn-sm btn-add" href="./add.php">增加優惠券</a>
      </div>



      <table class="coupon-table">
        <thead>
          <tr class="msg text-bg-dark ps-1">
            <th>#</th>
            <th>優惠券名稱</th>
            <th>折扣碼</th>
            <th>折扣數值</th>
            <th>折扣類型</th>
            <th>發行數量</th>
            <th>開始日期</th>
            <th>截止日期</th>
            <th>狀態</th>
            <th>使用範圍</th>
            <th>建立時間</th>
            <th>最後更新時間</th>
            <th>操作</th>
          </tr>
        </thead>
        <tbody>
          <?php

          $discount_type_idMap =[
            1 =>"元",
            2 =>"%"
          ];
          $statusMap = [
            1 => " 未啟用",
            2 => " 啟用中",
            3 => " 已過期"
          ];
          $usage_scopeMap = [
            1 => "全站通用",
            2 => "行程活動",
            3 => "各式票卷"
          ];
          

          ?>
          <?php foreach ($rows as $index => $row): ?>

            <td><?= $index + 1 + ($page - 1) * $perPage ?></td>
            <td><?= $row["name"] ?></td>
            <td><?= $row["discount_code"] ?></td>
            <td><?= $row["discount"] ?></td>
            <td><?= $row["discount_type_id"]  ?>
            <td><?= $row["quantity"] ?></td>
            <td><?= $row["start_date"] ?></td>
            <td><?= $row["end_date"] ?></td>
            <td><?= $statusMap[$row["status_id"]] ?></td>
            <td><?= $usage_scopeMap[$row["usage_scope_id"]] ?></td>
            <td><?= $row["created_at"] ?></td>
            <td><?= $row["updated_at"] ?></td>
            <td>
              <button class="btn btn-danger btn-sm btn-del" data-id="<?= $row["id"] ?>">刪除</button>

              <a class="btn btn-warning btn-sm" href="./update.php?id=<?= $row["id"] ?>">修改</a>
            </td>
            </tr>

          <?php endforeach; ?>
        </tbody>
      </table>



      <nav aria-label="Page navigation example">
        <?php for ($i = 1; $i <= $totalPage; $i++): ?>
          <ul class="pagination  pagination-sm justify-content-center">
            <li class="page-item <?= $page == $i ? "active" : "" ?>">
              <?php
              $link = "?page={$i}";
              //if($cid > 0) $link .= "&cid={$cid}";
              ?>
              <a class="page-link" href="<?= $link ?>"><?= $i ?></a>
            </li>
            </li>
          <?php endfor; ?>
        </ul>
      </nav>


    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
      crossorigin="anonymous"></script>
    <script>
      const btnDels = document.querySelectorAll(".btn-del");
      console.log(btnDels);
      btnDels.forEach((btn) => {
        btn.addEventListener("click", doconfirm);
      });


      function doconfirm(e) {
        const btn = e.target;
        if (confirm("確定要刪除嗎?")) {
          window.location.href = `./doDelete.php?id=${btn.dataset.id}`;
        }
      }
    </script>
</body>

</html>