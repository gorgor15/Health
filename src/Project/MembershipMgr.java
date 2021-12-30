package Project;

import java.sql.*;
import java.util.Vector;


public class MembershipMgr {

    private DBConnectionMgr pool = null;

    public MembershipMgr() {
        try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception e) {
            System.out.println("Error !!");
        }
    }

    public boolean checkId(String id) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean checkCon = false;
        try {
            con = pool.getConnection();
            String strQuery = "select id from membership where id = ?";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            checkCon = rs.next();

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return checkCon;
    }


    public boolean memberInsert(RegisterBean regBean) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        try {
            con = pool.getConnection();
            String strQuery = "insert into membership values(?,?,?,?,?,?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, regBean.getname());
            pstmt.setString(2, regBean.getid());
            pstmt.setString(3, regBean.getphone());
            pstmt.setString(4, regBean.getMemberday());
            pstmt.setString(5, regBean.getCloth());
            pstmt.setString(6, regBean.getLock());
            pstmt.setString(7, regBean.getDates());
            pstmt.setString(8, regBean.getTrainer());
            int count = pstmt.executeUpdate();

            if (count == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return flag;
    }

    public RegisterBean getMembership(String id) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        RegisterBean regBean = null;

        try {
            con = pool.getConnection();
            String strQuery = "select * from membership where id=?";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(2, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                regBean = new RegisterBean();
                regBean.setname(rs.getString("name"));
                regBean.setid(rs.getString("id"));
                regBean.setphone(rs.getString("phone"));
                regBean.setMemberday(rs.getString("Memberday"));
                regBean.setCloth(rs.getString("Cloth"));
                regBean.setLock(rs.getString("Lock"));
                regBean.setDates(rs.getString("Dates"));
                regBean.setTrainer(rs.getString("Trainer"));
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return regBean;
    }

    public Vector getMemberList() {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Vector vecList = new Vector();

        try {
            con = pool.getConnection();
            String strQuery = "select * from membership";
            stmt = con.createStatement();
            rs = stmt.executeQuery(strQuery);

            while (rs.next()) {
                RegisterBean regBean = new RegisterBean();
                regBean.setname(rs.getString("name"));
                regBean.setid(rs.getString("id"));
                regBean.setphone(rs.getString("phone"));
                regBean.setMemberday(rs.getString("Memberday"));
                regBean.setCloth(rs.getString("Cloth"));
                regBean.setLock(rs.getString("Lock"));
                regBean.setDates(rs.getString("Dates"));
                regBean.setTrainer(rs.getString("Trainer"));
                vecList.add(regBean);
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, stmt, rs);
        }
        return vecList;
    }

    /* ȸ���ǽ�û�����ϴ°� */
    public Vector getMembershipList() {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Vector vecList = new Vector();

        try {
            con = pool.getConnection();
            String strQuery = "select * from membership";
            stmt = con.createStatement();
            rs = stmt.executeQuery(strQuery);

            while (rs.next()) {
                RegisterBean regBean = new RegisterBean();
                regBean.setname(rs.getString("name"));
                regBean.setid(rs.getString("id"));
                regBean.setphone(rs.getString("phone"));
                regBean.setMemberday(rs.getString("Memberday"));
                regBean.setCloth(rs.getString("Cloth"));
                regBean.setLock(rs.getString("Lock"));
                regBean.setDates(rs.getString("Dates"));
                regBean.setTrainer(rs.getString("Trainer"));
                vecList.add(regBean);
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, stmt, rs);
        }
        return vecList;
    }

    
    public boolean memberUpdate(RegisterBean regBean) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        try {
            con = pool.getConnection();
            String strQuery = "update membership set name=?, id=?,";
            strQuery = strQuery + " phone=?, Memberday=?, Cloth=?,Lock=?,Dates=?,Trainer=?";
            strQuery = strQuery + " where id=? ";

            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, regBean.getname());
            pstmt.setString(2, regBean.getid());
            pstmt.setString(3, regBean.getphone());
            pstmt.setString(4, regBean.getMemberday());
            pstmt.setString(5, regBean.getCloth());
            pstmt.setString(6, regBean.getLock());
            pstmt.setString(7, regBean.getDates());
            pstmt.setString(8, regBean.getTrainer());
            int count = pstmt.executeUpdate();

            if (count == 1) {
                flag = true;
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return flag;
    }

    public boolean deletemembership(String id) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean result = false;

        try {
            con = pool.getConnection();
            String query = "delete from membership where no = ?";
            pstmt = con.prepareStatement(query);
            pstmt.setString(2, id);
            int count = pstmt.executeUpdate();
            if (count == 2) result = true;
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return result;
    }
}
