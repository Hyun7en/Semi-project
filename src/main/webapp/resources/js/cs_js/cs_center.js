

            $(document).ready(function() {
                // 페이지 로드시 바로 실행
                selectCsTypeList(null, function(res){

                    let csTypeList = [];
                    for(let csType of res){
                        // csTypeList.push({
                        //     csTypeNo: res.csTypeNo,
                        //     csTypeValue: res.csTypeValue,
                        // })
                        csTypeList.push({
                          ...csType,
                          clickEvent: function(item){
                            //클릭됐을 시

                            // cskeywordList 가져오기
                            selectCsKeywordList({ "csTypeNo": item.csTypeNo }, function(list){

                                // cskeywordList 출력
                                drawCsKeywordList(list, function(){
                                    document.querySelector('.csKeyword').children[0].click();

                                });
                            });
                          }
                        })
                    }

                    //CsTypeList 출력
                    drawCsTypeList(csTypeList, document.querySelector("#section-2 .csType"), function(){
                        document.querySelector("#section-2 .csType").children[0].click();
                    });
                }); 
            });
            
            function drawCsTypeList(list, parent, callback){
                $(parent).empty();
                // csType 목록 생성
                $.each(list, function(index, item) {
                    let csTypeBtn = document.createElement('a');
                    csTypeBtn.innerText = item.csTypeValue;
                    csTypeBtn.onclick = function(){
                        item.clickEvent(item);
                    }

                    parent.appendChild(csTypeBtn);
                });

                callback();
            }
            
            function selectCsTypeList(data, callback) {
                $.ajax({
                    url: "csType.ax", 
                    data: data,
                    success: function(res) {
                        callback(res)
                    },
                    error: function() {
                        console.log("csType.ax 통신 실패");
                    }
                });
            }

            function drawCsKeywordList(keywordlist, callback){
                $(document.querySelector('.csKeyword')).empty();
                // csKeyword 목록 생성
                $.each(keywordlist, function(index, item) {
                    let csKeywordBtn = document.createElement('li');
                    csKeywordBtn.innerText = item.csKeywordValue;
                    csKeywordBtn.onclick = function(){
                        selectCsDetailList(item.csKeywordNo)
                    }

                    document.querySelector('.csKeyword').appendChild(csKeywordBtn);
                });

                callback();        
                            
            }
        
            function selectCsKeywordList(data, callback) {
                $.ajax({
                    url: "csKeyword.ax", 
                    method: "GET", 
                    data: data, // 선택한 csTypeNo를 서버에 전달
                    success: function(res) {
                        callback(res);
                    },
                    error: function() {
                        console.log("csKeyword.ax 통신 실패");
                    }
                });
            }
    
        
            function selectCsDetailList(csKeywordNo) {
                $.ajax({
                    url: "csDetail.ax", 
                    method: "GET", 
                    data: { "csKeywordNo": csKeywordNo }, // 선택한 csKeywordNo를 서버에 전달
                    success: function(res) {
                        // csDetail 내용 생성
                        var csDetailContent = '';
                        $.each(res, function(index, item) {
                            csDetailContent += `<div>` + item.csDetailTitle + `</div>` +  
                                               `<p>` + item.csDetailContent + `</p>`;
                        });
                        $(".csDetail").html(csDetailContent); // 결과를 .csDetail 요소에 적용
                    },
                    error: function() {
                        console.log("csDetail.ax 통신 실패");
                    }
                });
            }

            //선택시 원래 이벤트 닫고 새 이벤트 시작

            $(document).on("click", ".csDetail > div", function() {
                    //this => 클릭이벤트가 발생한 요소(div)
                    //$(this).next() => 선택된 요소의 뒤에있는 요소(p)
                    let tmp;
                    
                    const $p = $(this).next();
                    
                    if($p.css("display") === "none") {
                        $(".csDetail > p").slideUp();
                        $p.slideDown();
                    } else { //보여지고있는 상태
                        $p.slideUp();
                    }
                });
    