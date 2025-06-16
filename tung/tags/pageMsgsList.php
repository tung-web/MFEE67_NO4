<?php
require_once "./connect.php";

?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>訊息列表</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <style>
        .msg {
            display: flex;
        }

        .id {
            width: 30px;
        }

        .name {
            width: 100px;
        }

        .content {
            flex: 1;
        }

        .time {
            width: 100px;
        }

        .head {
            width: 30px;
            height: 30px;
            border-radius: 2px;
            object-fit: cover;
        }
    </style>
</head>

<body>
    <div class="container my-3">
        <h1>訊息列表</h1>
        <div class="my-2 d-lg-flex align-items-center">

            <div class="container my-3">
                <a href="./testForm03.php" class="btn btn-primary btn-sm">增加資料</a>
            </div>

            <div class="msg text-bg-dark mb-1 rounded-1">
                <div class="id ps-1">#</div>
                <div class="name">Name</div>
                <div class="content">content</div>
                <div class="time">control</div>
            </div>
             <div class="msg mb-1">
          <div class="id"><?=$index+1?></div>
          <div class="name"><?=$row["name"]?></div>
          <div class="content"><?=$row["content"]?></div>
          <div class="time">
            <!-- <a href="./doDelete01.php?id=<?=$row["id"]?>" class="btn btn-danger btn-sm">刪除</a> -->
            <button class="btn btn-danger btn-sm btn-del" data-id="<?=$row["id"]?>">刪除</button>
            <a href="./pageMsg.php?id=<?=$row["id"]?>" class="btn btn-warning btn-sm">修改</a>
          </div>
        </div>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
    crossorigin="anonymous"></script>
  <script></script>