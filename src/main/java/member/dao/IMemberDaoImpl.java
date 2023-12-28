package member.dao;

import member.vo.LprodVo;
import member.vo.MemberVo;
import member.vo.ProdVo;
import member.vo.ZipVo;

import java.util.List;

public class IMemberDaoImpl implements IMemberDao{
    private static IMemberDaoImpl instance = null;

    private IMemberDaoImpl() {

    }
    public static IMemberDaoImpl getInstance() {
        if(instance == null) instance = new IMemberDaoImpl();

        return instance;
    }


    @Override
    public List<LprodVo> lprodList() {
        String sql = " select * " +
                " from lprod";
        return null;
    }

    @Override
    public List<ProdVo> prodList(String prodLgu) {
        String sql = " select * " +
                " from prod " +
                " where prod_lgu =" + prodLgu;

        return null;
    }

    @Override
    public List<MemberVo> memAddrList(String addr) {
        String sql = " select mem_id, mem_name, mem_hp " +
                " from member " +
                " where mem_add1 LIKE '" + addr + "'||'%'";
        return null;
    }

    @Override
    public MemberVo memIdList(String id) {
        String sql = " select * " +
                     " from member " +
                     " where mem_id = '" + id + "'";
        return null;
    }

    @Override
    public MemberVo memLoginInfo(List<Object> param) {
        String sql = " select mem_id, mem_pass, mem_name, mem_hp" +
                     " from member" +
                     " where mem_id = ? " +
                     " and   mem_pass = ? ";
        return null;
    }

    @Override
    public MemberVo idChk(String id) {
        String sql = " selelct mem_id " +
                     " from member " +
                     " where mem_id = '" + id + "'";
        return null;
    }

    @Override
    public List<ZipVo> addrInfo(String zipCode) {
        String sql = "select zipcode, sido, gugun, dong" +
                     " from ziptb" +
                     " where zipcode = '" + zipCode + "'";
        return null;
    }

    @Override
    public void signUp(List<MemberVo> param) {
        String sql = " insert into member" +
                " (mem_id, mem_pass, mem_name, mem_bir, mem_zip, mem_add1, mem_add2, mem_hp, mem_mail) " +
                " values (?,?,?,?,?,?,?,?,?)";
    }
}
