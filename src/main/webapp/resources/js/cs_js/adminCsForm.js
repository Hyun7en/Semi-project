
$(document).ready(function() {
    //페이지 로드시 바로 csTypeValue 가져오기
    selectCsTypeList(null, function(res){

        let csTypeList = [];
        for(let csType of res){
            csTypeList.push({
                ...csType,
                SelectEvent: function(item){
                    //선택시

                    //csKeywordList 가져오기
                    selectCsKeywordList({ "csTypeNo": item.csTypeNo}, function(list){

                        // csKeywordList 출력
                        drawCsKeywordList(list, function(){
                            document.querySelector('#select-csType').children[0].click();

                        });
                    });
                } 
            });
        }

        //CsTypeList 출력
        drawCsTypeList(csTypeList, document.querySelector("#select-csType"), function(){
            document.querySelector("#select-csType").children[0].click();
        });
    });
});

function drawCsTypeList(list, parent, callback){
    $(parent).empty();
    // csType 목록 생성
    $.each(list, function(index, item) {
        let csTypeBtn = document.createElement('option');
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
    $(document.querySelector('#select-csKeyword')).empty();
    // csKeyword 목록 생성
    $.each(keywordlist, function(index, item) {
        let csKeywordBtn = document.createElement('option');
        csKeywordBtn.innerText = item.csKeywordValue;
        csKeywordBtn.onclick = function(){
            selectCsDetailList(item.csKeywordNo)
        }

        document.querySelector('#select-csKeyword').appendChild(csKeywordBtn);
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