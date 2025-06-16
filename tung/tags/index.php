<?php

require_once "../connect.php";
require_once "../Utilities.php";


$sql = "SELECT * FROM `tags` WHERE  `is_valid` = 1 ";
$sqlAll = "SELECT * FROM `tags` WHERE  `is_valid` = 1";

try {
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

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
    <title>會員系統首頁</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <style>
        .msg {
            display: flex;
            margin-bottom: 2px;
        }

        .id {
            width: 30px;
        }

        .name {
            width: 100px;
        }



        .time {
            width: 100px;
        }

        .wpx200 {
            width: 200px;
        }
    </style>
</head>

<body>

    <div class="container mt-3">
        <h1>使用者列表</h1>
        <div class="msg text-bg-dark ps-1">
            <div class="id">#</div>
            <div class="name">姓名</div>

        </div>


        <?php foreach ($rows as $index => $row): ?>
            <div class="msg">

                <div class="name"><?= $row["name"] ?></div>
                <div class="time">
                    <button class="btn btn-danger btn-sm btn-del" data-id="<?= $row["id"] ?>">刪除</button>
                    <a class="btn btn-warning btn-sm" href="./update.php?id=<?= $row["id"] ?> ">修改</a>
                </div>
            </div>
        <?php endforeach; ?>

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