let spring = document.querySelector(".spring");
let summer = document.querySelector(".summer");
let autumn = document.querySelector(".autumn");
let winter = document.querySelector(".winter");
let information = document.querySelector(".information");

autumn.addEventListener('click', autumn_page);
spring.addEventListener('click', spring_page);
summer.addEventListener('click', summer_page);
winter.addEventListener('click', winter_page);

let pic = document.querySelector(".spot_img");
let open = document.querySelector(".open");
let spot_name = document.querySelector(".spot_1")
let spot_td = document.querySelectorAll(".spot_td");

function spring_page() {
   location.href = "season_rec_.jsp";
}
function summer_page() {
   open.innerHTML = "여름에 추천하는 무장애 관광지";
   pic.src = "images/season_page/summer.jpg";
   spot_name.innerHTML = "대나무박물관";
   spot_td[0].innerHTML = "담양군 담양읍 죽향문화로 35";
   spot_td[1].innerHTML = "061-380-2901";
   spot_td[2].innerHTML = "대나무자연연구소 한국대나무박물관담당";
   information.innerHTML = "예로부터 담양은 기후와 토질이 대나무가 자라기에 알맞아 대나무가 많이 자라서 마을이 있으면 대나무가 있고 대나무가 있는 곳엔 마을이 있는 대나무의 주산지 로서 특히, 죽세공예가 발달하여 竹鄕(대나무고을)로 널리 알려져 있습니다.1981년에 죽물박물관이 개관된 후 전국 유일의 죽제품 주산지로서 보존, 전시, 시연, 판매 등 종합기능을 수행할 공간을 갖추어 대나무공예문화 전통 계승과 대나무공예 진흥의 계기를 마련하고자 1998년에 현재의 위치에 확장 이전하여 2003년에 한국대나무박물관으로 명칭을 변경하여 운영하여 왔습니다.전시관에는 지난 35년 동안 수집하여온 고죽제품, 명인의 죽세공예품, 전국대나무공예대전 입상작품 등 다양한 대나무공예품과 중국, 일본, 베트남, 미국 등 외국제품 및 대나무 신산업제품 그리고 2015담양세계대나무박람회의 전시품과 박람회 참여국가의 기증품이 전시되어 있습니다.";

}

function autumn_page() {
   open.innerHTML = "가을에 추천하는 무장애 관광지";
   pic.src = "images/season_page/spring_02.jpg";
   spot_name.innerHTML = "광주-기아 챔피언스필드";
   spot_td[0].innerHTML = "광주 북구 서림로 10";
   spot_td[1].innerHTML = "070-7686-8000";
   spot_td[2].innerHTML = "KIA타이거즈";
   information.innerHTML = "원래는 광주 무등경기장 주경기장이었지만 2011년 경기장을 철거한 후 2012년 야구장 공사를 착공하여 2013년 12월에 지하 2층, 지상 5층, 22,244석, 최대 수용인원 27,000명 규모로 완공하였다. 관람 외야 중앙에 35mⅹ15m 규모의 대형 전광판이 설치되어 있으며 전광판 아래쪽에는 아이들을 위한 놀이시설이 구비되어 있다.";

}

function winter_page() {
   open.innerHTML = "겨울에 추천하는 무장애 관광지";
   pic.src = "images/season_page/winter.jpg";
   spot_name.innerHTML = "순천만 습지";
   spot_td[0].innerHTML = "전라남도 순천시 순천만길 513-25";
   spot_td[1].innerHTML = "070-7686-8000";
   spot_td[2].innerHTML = "순천만";
   information.innerHTML = "순천만은 우리나라 남해안에 위치한 연안습지 중 우리나라를 대표할 만한 5.4㎢(160만평)의 빽빽한 갈대밭과 끝이 보이지 않는 22.6㎢(690만평)의 광활한 갯벌로 이루어져 있다. 겨울이면 흑두루미, 재두루미, 노랑부리저어새, 큰고니, 검은머리물떼새 등 국제적으로 보호되고 있는 철새 희귀종들이 순천만을 찾아온다. 순천만에서 발견되는 철새는 총 230여종으로 우리나라 전체 조류의 절반가량이나 되며 2003년 습지 보호지역, 2006년 람사르협약 등록,2008년 국가지정문화재 명승 제41호로 지정된 순천만은 농게, 칠게, 짱뚱어 등과 같은 갯벌 생물들이 한데 어우러져 살아가고 있다.";
}