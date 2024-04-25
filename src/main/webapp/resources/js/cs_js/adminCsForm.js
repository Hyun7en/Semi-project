$(document).ready(function() {
    // 페이지 로드시 csType 목록 가져오고 첫 번째 항목을 클릭
    selectCsTypeList(function(csTypeList){
        drawCsTypeList(csTypeList);
        if(csTypeList.length > 0) {
            selectCsKeywordList({ "csTypeNo": csTypeList[0].csTypeNo }, function(keywordList) {
                drawCsKeywordList(keywordList);
            });
        }
    });

    // csType 선택 시 csKeyword 목록 업데이트
    $('#select-csType').on('change', function() {
        let csTypeNo = $(this).val();
        selectCsKeywordList({ "csTypeNo": csTypeNo }, function(keywordList) {
            drawCsKeywordList(keywordList);
        });
    });
});

function drawCsTypeList(csTypeList){
    let $selectCsType = $('#select-csType');
    $selectCsType.empty();
    $.each(csTypeList, function(index, csType) {
        $selectCsType.append($('<option>').text(csType.csTypeValue).val(csType.csTypeNo));
    });
}

function selectCsTypeList(callback) {
    $.ajax({
        url: "csType.ax", 
        success: function(res) {
            callback(res);
        },
        error: function() {
            console.log("csType.ax 통신 실패");
        }
    });
}

function drawCsKeywordList(keywordList){
    let $selectCsKeyword = $('#select-csKeyword');
    $selectCsKeyword.empty();
    $.each(keywordList, function(index, keyword) {
        $selectCsKeyword.append($('<option>').text(keyword.csKeywordValue).val(keyword.csKeywordNo));
    });
}

function selectCsKeywordList(data, callback) {
    $.ajax({
        url: "csKeyword.ax", 
        method: "GET", 
        data: data,
        success: function(res) {
            callback(res);
        },
        error: function() {
            console.log("csKeyword.ax 통신 실패");
        }
    });
}
