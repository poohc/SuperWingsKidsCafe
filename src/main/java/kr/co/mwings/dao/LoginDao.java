package kr.co.mwings.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mwings.vo.MasterInfoVo;
import kr.co.mwings.vo.MemberVo;

@Repository
public class LoginDao {
	@Autowired
	private SqlSession sqlSession; 
	
	private final String NS = "kr.co.mwings.login.";
	
	public MasterInfoVo selectLoginMasterInfo(MemberVo memberVo) {
		return sqlSession.selectOne(NS + "selectLoginMasterInfo", memberVo);
	}
	
}
