let banner = document.getElementById('banner');
/*let p = document.querySelector(".title");*/
let num = 1;

let i = 0;

banner.addEventListener('click', season);

setInterval(function() {

	// console.log('반복');
	nextImage();
}, 4000);

function preImage() {
	if (num == 1) {
		num = 4;
	} else
		num--;
	banner.style.background = 'url(images/' + num + '.jpg)';
}

function nextImage() {
	if (num == 4) {
		num = 1;
	} else
		num++;
	if (i == 3) {
		i = 0;
	} else
		i++;
	/*p.innerHTML = "계절별 여행 추천 !"*/
	banner.style.background = 'url(images/' + num + '.jpg)';

}

function season() {
	
	if (num == 1 || num == 2 || num == 3 || num == 4) {
		
	location.href = "season_rec_.jsp";
		
		
	}

}
