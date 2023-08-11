package mybatis;

import java.io.IOException;
import java.io.InputStream;
//Mybatis 프레임웍의 클래스들..
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionBean {
/*
 * Mybatis 라이브러리의 SqlSession 구현 객체가 Connection 과 PreparedStatement 역할을 합니다.
 * SqlSesseionFactoryBuilder 가  SqlSessionFactory 객체 생성
 * SqlSessionFactory 객체가 SqlSession 객체 생성  : 클래스 의존관계
 *  => SqlSession 객체로 db sql을 실행합니다.
 * 
 * https://mybatis.org/mybatis-3/ko/getting-started.html 참고로 작성합니다.
 * 위의 사이트에서 알려준 코드는 아래 3줄 입니다. ----------------------
 * String resource = "org/mybatis/example/mybatis-config.xml";
   InputStream inputStream = Resources.getResourceAsStream(resource);
   SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
 * 
 */
	public static SqlSessionFactory sqlSessionFactory;
	static {   //변수들이 static 영역에 저장됩니다.
		String resource = "mybatis/mybatis-config.xml";    //mybatis 설정파일
		InputStream inputStream=null;			//파일을 읽기위한 입력 스트림
	
	
		try {
			inputStream = Resources.getResourceAsStream(resource);   //리소스 파일 자원 읽어오기
		}catch(IOException e) {
			System.out.println("mybatis 설정 파일 읽기 오류입니다.");
		}
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);   
		//읽어온 파일로 factory 생성
	}
	
	public static SqlSession getSession() {    
		return sqlSessionFactory.openSession();
	}
}




