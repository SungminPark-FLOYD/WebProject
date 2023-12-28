package member.service;

import member.dao.IMemberDaoImpl;
import member.vo.LprodVo;
import member.vo.MemberVo;
import member.vo.ProdVo;
import member.vo.ZipVo;

import java.util.List;

public class MemberServiceImpl implements IMemberService{
    private static MemberServiceImpl instance = null;

    private MemberServiceImpl() {
    }
    public static MemberServiceImpl getInstance() {
        if(instance == null) instance = new MemberServiceImpl();

        return instance;
    }

    IMemberDaoImpl dao = IMemberDaoImpl.getInstance();

    @Override
    public List<LprodVo> lprodList() {
        return null;
    }

    @Override
    public List<ProdVo> prodList(String prodLgu) {
        return null;
    }

    @Override
    public List<MemberVo> memAddrList(String addr) {
        return null;
    }

    @Override
    public MemberVo memIdList(String id) {
        return null;
    }

    @Override
    public MemberVo memLoginInfo(List<Object> param) {
        return null;
    }

    @Override
    public MemberVo idChk(String id) {
        return null;
    }

    @Override
    public List<ZipVo> addrInfo(String zipCode) {
        return null;
    }

    @Override
    public void signUp(List<MemberVo> param) {

    }
}
