package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import DTO.MemberDTO;

public class MemberDAO {
	private MemberDAO() {

	}

	public static MemberDAO mdao = null;

	public static MemberDAO getinstance() { // Singleton ó��
		if (mdao == null) {
			mdao = new MemberDAO();
		}
		return mdao;
	}

	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:orcl1";
	private String id = "system";
	private String pwd = "1111";
	protected Connection conn = null; // oracle �����ϱ� ���� ���� ���ؼ�
	// �ٸ� �޼ҵ忡�� ��ӹ޾� ����Ҽ� �ְ� 'protected'�� �ɾ��־���.
	protected ResultSet rs = null; // �������� ����� �����ϴ� ����
	protected PreparedStatement ppst = null;
	protected Statement st;
	protected String sql;

	public Connection connect() {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			System.out.println("����̹� �ε� ����");
		}
		try {
			conn = DriverManager.getConnection(url, id, pwd);
			return conn;
		} catch (Exception e) {
			System.out.println("���� ���� ");
		}
		return null;
	}

	public void disconnect() {
		try {
			if (conn != null)
				conn.close();
			if (ppst != null)
				ppst.close();
			if (st != null)
				st.close();
		} catch (Exception e) {
			System.out.println("�ݱ⸦ �����߽��ϴ�.");
		}
	}

	// guest_seq.nextval
	////////////// DAO���� �� ///////////
	public void insert(MemberDTO dto) {
		sql = "insert into guest (no,name,addr,tel,type,day,hobby)values(?,?,?,?,?,?,?)";
		ppst = null;
		if (connect() != null) {
			try {
				ppst = conn.prepareStatement(sql);
				ppst.setInt(1, Integer.valueOf(dto.getNumber()));
				ppst.setString(2, dto.getName());
				ppst.setString(3, dto.getAddr());
				ppst.setString(4, dto.getTel());
				ppst.setString(5, dto.getType());
				ppst.setString(6, dto.getDate());
				ppst.setString(7, dto.getHobby());
				ppst.executeUpdate();
				// ppst.setString(3, dto.getTel());
				// ppst.setString(5, dto.getHobby());
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
	}

	public ArrayList<MemberDTO> selectAll() {
		sql = "select * from guest";
		st = null;
		rs = null;
		MemberDTO dto = null;
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		if (connect() != null) {
			try {
				st = conn.createStatement();
				rs = st.executeQuery(sql);
				while (rs.next()) {
					dto = new MemberDTO();
					dto.setNumber(String.valueOf(rs.getInt("no")));
					dto.setName(rs.getString("name"));
					dto.setAddr(rs.getString("addr"));
					dto.setTel(rs.getString("tel"));
					dto.setType(rs.getString("type"));
					dto.setHobby(rs.getString("hobby"));
					dto.setDate(rs.getString("day"));
					// dto.setTel(rs.getString("tel"));
					// dto.setHobby(rs.getString("hobby"));
					list.add(dto);
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		return list;
	}

	public ArrayList<MemberDTO> selectOne(int number) {
		sql = "select * from guest where no=?";
		ppst = null;
		rs = null;
		MemberDTO dto = null;
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		if (connect() != null) {
			try {
				ppst = conn.prepareStatement(sql);
				ppst.setInt(1, number);
				rs = ppst.executeQuery();
				if (rs.next()) {
					dto = new MemberDTO();
					dto.setNumber(String.valueOf(rs.getInt("no")));
					dto.setName(rs.getString("name"));
					dto.setAddr(rs.getString("addr"));
					dto.setTel(rs.getString("tel"));
					dto.setType(rs.getString("type"));
					dto.setHobby(rs.getString("hobby"));
					dto.setDate(rs.getString("day"));
					// dto.setTel(rs.getString("tel"));
					// dto.setHobby(rs.getString("hobby"));
					list.add(dto);
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		return list;
	}

	public void updateOne(MemberDTO dto) {
		sql = "update guest set name=?,addr=?,tel=?,type=?,hobby=?,date=? where no=?";
		ppst = null;
		if (connect() != null) {
			try {
				ppst=conn.prepareStatement(sql);
				ppst.setString(1, dto.getName());
				ppst.setString(2, dto.getAddr());
				ppst.setString(3, dto.getTel());
				ppst.setString(4, dto.getType());
				ppst.setString(5, dto.getDate());
				ppst.setString(6, dto.getHobby());
				ppst.setInt(7, Integer.valueOf(dto.getNumber()));
				ppst.executeUpdate();
				
			} catch (Exception e) {
				// TODO: handle exception
			}
		}

	}
}