//라디오버튼 중복선택 막기
//lastChecket = null;을 통해 마지막 선택한 라디오버튼을 저장하고,
//click 이벤트가 발생할 때마다 마지막 선택한 라디오버튼을 해제하고 새로 선택한 라디오버튼을 저장한다.
let lastChecked = null;

$('input[type="checkbox"]').click(function() {
	if (lastChecked != null) {
		lastChecked.prop('checked', false);
	}
	lastChecked = $(this);
});
