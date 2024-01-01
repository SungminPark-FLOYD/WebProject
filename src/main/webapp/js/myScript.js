function print() {
    //입력받은 id의 값을 가져온다 - id=id인 요소에 접근
    idValue = document.querySelector('#id').value;

    //처리 한후 처리 결과를 출력한다.
    str = "당신이 입력한 id는 " + idValue + "입니다.";

    //출력 장소 접근
    document.querySelector('#result').innerText = str;
}