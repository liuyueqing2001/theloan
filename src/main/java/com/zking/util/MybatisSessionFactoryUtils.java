package com.zking.util;

import java.io.InputStream;
import java.util.List;

/*import com.zking.mapper.BookMapper;*/
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisSessionFactoryUtils {

	public static SqlSessionFactory sqlSessionFactory;

	private static ThreadLocal<SqlSession> threadLocal = new ThreadLocal<SqlSession>();

	static {
		try {
			InputStream is = MybatisSessionFactoryUtils.class
					.getResourceAsStream("/mybatis.cfg.xml");
			SqlSessionFactoryBuilder sqlSessionFactoryBuilder = new SqlSessionFactoryBuilder();
			sqlSessionFactory = sqlSessionFactoryBuilder.build(is);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	private MybatisSessionFactoryUtils() {
	}

	public static SqlSession openSession() {
		SqlSession sqlSession = threadLocal.get();
		if (null == sqlSession) {
			sqlSession = sqlSessionFactory.openSession();
			threadLocal.set(sqlSession);
		}
		return sqlSession;
	}

	public static void closeSession() {
		SqlSession sqlSession = threadLocal.get();
		if (null != sqlSession) {
			threadLocal.set(null);
			sqlSession.close();
		}
	}
	
	public static void main(String[] args) {
	/*	SqlSession sqlSession = MybatisSessionFactoryUtils.openSession();
		System.out.println(sqlSession);
		System.out.println(sqlSession.getConnection());
		//通过sqlSession获取mybatis自动生成mappar接口

		BookMapper mapper = sqlSession.getMapper(BookMapper.class);
		List list = mapper.list(null);
		System.out.println(list);
		MybatisSessionFactoryUtils.closeSession();*/
	}

}
