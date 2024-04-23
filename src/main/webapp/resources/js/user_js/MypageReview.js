if(pathname==='/delete_process'){
    var body = '';
    request.on('data', function (data) {
      body = body + data; // 콜백이 실행될 때마다 데이터를 추가
      if (body.length > 1e6) request.connection.destroy(); // 데이터가 너~무 많으면 연결을 강제로 종료
    });

    request.on('end', function () {
      var post = qs.parse(body); // 지금까지 저장한 body 데이터를 querystring 모듈의 parse를 사용하면 post데이터의 post 정보가 들어있다.
      
      console.log(post);

    });
    response.writeHead(200);
    response.end('success');
} else {
	response.writeHead(404);
	response.end('Not found');
}
