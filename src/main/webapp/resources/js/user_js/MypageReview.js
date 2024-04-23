if(pathname==='/delete_process'){
    var body = '';
    //POST 방식으로 데이터를 보낼 때, 데이터가 한번에 너무 많으면, 특정한 양(조각)을 수신할 때마다 서버는 콜백 함수를 호출하도록 약속되어 있다.
    request.on('data', function (data) {
      body = body + data; // 콜백이 실행될 때마다 데이터를 추가
      if (body.length > 1e6) request.connection.destroy(); // 데이터가 너~무 많으면 연결을 강제로 종료
    });

    //Data가 조각 조각 들어오다가 더이상 데이터가 않오면 이게 실행되고, 콜백 함수가 실행됨
    request.on('end', function () {
      //정보를 qs 모듈로 post라는 객체로 객체화
      var post = qs.parse(body); // 지금까지 저장한 body 데이터를 querystring 모듈의 parse를 사용하면 post데이터의 post 정보가 들어있다.
      
      console.log(post);

    });
    response.writeHead(200);
    response.end('success');
} else {
	response.writeHead(404);
	response.end('Not found');
}