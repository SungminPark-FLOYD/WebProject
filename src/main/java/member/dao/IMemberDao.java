package member.dao;

import member.vo.LprodVo;
import member.vo.MemberVo;
import member.vo.ProdVo;
import member.vo.ZipVo;

import java.util.List;
import java.util.Objects;

public interface IMemberDao {
    //Lprod 데이터 조회
    public abstract List<LprodVo> lprodList();
    //상품목록조회
    public abstract List<ProdVo> prodList(String prodLgu);
    //주소로 아이디/이름/전화번호 조회
    public abstract List<MemberVo> memAddrList(String addr);
    //id로 정보조회
    public abstract MemberVo memIdList(String id);
    //아이디와 비밀번호 일치하는 사람조회
    public abstract MemberVo memLoginInfo(List<Object> param);
    //아이디 중복검사
    public abstract MemberVo idChk(String id);
    //우편번호 검색
    public abstract List<ZipVo> addrInfo(String zipCode);
    //회원가입
    public abstract void signUp(List<MemberVo> param);


}
