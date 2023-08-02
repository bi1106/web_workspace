/**
 * 
 */

 	// 함수 정의(화살표 함수)
	const testKakao = () => {
		//초창기 데이터 api가 XML 제공만 했으므로 이름에 XML이 있습니다.
		const xhr = new XMLHttpRequest()
		
		//요청 파라미터를 쿼리스트링 즉 하나의 문자열로 만들기
		let query = document.getElementById('query').value
		let page = document.getElementById('pageno').value
		let size = document.getElementById('size').value
		let sort = document.getElementById('accuracy').checked
		if(sort)
			sort= 'accuracy'
		else
			sort='recency'
		//요청 URL 설정 : 요청 메소드 방식 GET(조회),POST(저장)
		xhr.open('GET',`https://dapi.kakao.com/v2/search/vclip?query=${query}&sort=${sort}&page=${page}&size=${size}`)
		//요청 헤더 항목을 추가. 카카오 api에서 정함. 인증과 관련된 항목
		xhr.setRequestHeader('Authorization','KakaoAK b3ff05d3c41bc4a86d4d58aea84060bc')
		//요청을 보내는 메소드.
		xhr.send()
		
		let result=''
		let count =''
		//onload는 응답이 오면 발생하는 이벤트. 이벤트 처리 함수 정의.
		xhr.onload = function(){
			//요청 처리 결과에 대한 상태코드 값은 status 프로퍼티로 확인.
			let $response =''
			if(xhr.status == 200){
				alert('kakao 검색 응답을 받았습니다.')
				//xhr.response는 응답으로 받은 내용 저장하는 xhr의 프로퍼티. xhr.response는 json 문자열
				$response = JSON.parse(xhr.response)	// 문자열을 자바스크립트 객체로 변환
				result = $response.documents	// 객체의 documents 프로퍼티만 변수에 저장
				count = $response.meta
				
			}// if end
		console.log('documents 프로퍼티 : ')
		console.log(result) //콘솔에 출력
		console.log($response) //콘솔에 출력
		
		// result를 화면에 목록으로 보여주기
		document.getElementById('count').innerHTML= count.total_count
		document.getElementById('list').innerHTML=''
		
		result.forEach((item)=>{
			const $ul =document.createElement('ul')
			const temp = `
					<li>${item.author}</li>
					<li>${item.title}</li>
					<li>${item.play_time}</li>
					<li>${item.datetime}</li>
					<li>
					<a href='${item.url}' target='_blank'>
					<img src='${item.thumbnail}' width='200px'></a>
					</li>`
			$ul.innerHTML=temp
			document.getElementById('list').appendChild($ul)
			
		})
		
		}//function end
		
	} //testKakao 함수 end
	document.getElementById('search').addEventListener('click',testKakao)