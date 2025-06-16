<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-3">
  <h1>增加使用者</h1>
  <form action="./doAdd.php" method="post">
    <div class="input-group mb-1">
      <span class="input-group-text">id</span>
      <input required name="id" type="text" class="form-control" >
    </div>
    <div class="input-group mb-1">
      <span class="input-group-text">name</span>
      <input required name="name" type="text" class="form-control" >
    </div>
       <div class="mt-1 text-end">
      <button type="submit" class="btn btn-info btn-send">送出</button>
      <a class="btn btn-primary" href="./index.php">取消</a>
    </div>
  </form>
</div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
    </body>
</html>