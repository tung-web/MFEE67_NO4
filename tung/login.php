<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <style>
        .block {
            width: 300px;
            height: 250px;
        }
    </style>
</head>

<body>
    <div class="block bg-primary-subtle p-3 position-absolute start-0 end-0 m-auto rounded-2 mt-5">
        <h1>登入</h1>
        <form action="./doLogin.php" method="post">
            <input type="text" name="email" class="form-control mb-1" placeholder="使用者帳號">
            <input type="password" name="password1" class="form-control mb-1" placeholder="使用者密碼">
            <input type="password" name="password2" class="form-control mb-1" placeholder="再輸入一次使用者密碼">
            <div class="text-end">
                <button class="btn btn-info btn-send me-1">送出</button>
                <a class="btn btn-info btn-send">註冊</a>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
        crossorigin="anonymous"></script>
</body>

</html>