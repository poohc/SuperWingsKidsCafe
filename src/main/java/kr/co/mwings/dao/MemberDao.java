package kr.co.mwings.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mwings.vo.MemberVo;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSession sqlSession; 
	
	private final String NS = "kr.co.mwings.member.";
	
	//기존 회원 여부 확인
	public int selectExistMemberCount(Map<String, Object> param) {
		return sqlSession.selectOne(NS + "selectExistMemberCount" , param);
	}
	
	//MASTERINFO 테이블 데이터 INSERT
	public int insertMasterInfo(Map<String, Object> param) {
		return sqlSession.insert(NS + "insertMasterInfo", param);
	}
	
	//MEMBERINFO 테이블 데이터 INSERT
	public int insertMemberInfo(Map<String, Object> param) {
		return sqlSession.insert(NS + "insertMemberInfo", param);
	}
	
	//MASTERINFO 테이블 데이터 삭제
	public int deleteMasterInfo(Map<String, Object> param) {
		return sqlSession.delete(NS + "deleteMasterInfo", param);
	}
	
	//비밀번호 가져오기
	public Map<String, Object> selectPassWord(MemberVo memberVo){
		return sqlSession.selectOne(NS + "selectPassWord", memberVo);
	}

	//내정보 메뉴 데이터 가져오기
	public Map<String, Object> selectMyMasterInfo(MemberVo memberVo) {
		return sqlSession.selectOne(NS + "selectMyMasterInfo", memberVo);
	}
	
	//비밀번호 변경 처리
	public int changeMasterInfoPassword(Map<String, Object> param) {
		return sqlSession.update(NS + "changeMasterInfoPassword", param);
	}
	
	//매장방문이력 가져오기
	public List<Map<String, Object>> selectStoreVisitInfo(Map<String, Object> param){
		return sqlSession.selectList(NS + "selectStoreVisitInfo", param);
	}
	
	//매장이용정보 가져오기
	public List<Map<String, Object>> selectStoreUseInfo(Map<String, Object> param){
		return sqlSession.selectList(NS + "selectStoreUseInfo", param);
	}
	
	//MasterInfo 삭제
	public int deleteMasterInfoByMemberOut(MemberVo memberVo){
		return sqlSession.delete(NS + "deleteMasterInfoByMemberOut", memberVo);
	}
	
	//MemberInfo 삭제
	public int deleteMemberInfo(MemberVo memberVo){
		return sqlSession.delete(NS + "deleteMemberInfo", memberVo);
	}
	
	//PointHis 테이블 데이터 추가
	public int insertPointHis(Map<String, Object> param){
		return sqlSession.insert(NS + "insertPointHis", param);
	}
	
	//MultiticketSalesUse 테이블 데이터 삭제
	public int deleteMultiticketSalesUse(Map<String, Object> param) {
		return sqlSession.delete(NS + "deleteMultiticketSalesUse", param);
	}
	
	//포인트 사용내역 데이터 가져오기
	public List<Map<String, Object>> selectPointUseList(Map<String, Object> param){
		return sqlSession.selectList(NS + "selectPointUseList", param);
		
	}
	
}
