package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.AddEmployee;
import com.springmvc.beans.EmpManagementUser;
import com.springmvc.beans.Login;

public class EmpManagementUserDao {

	@Autowired
	DataSource datasource;

	@Autowired
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(AddEmployee emp) {
		String sql = "insert into empmanagementuser(username,password,accountType,firstname,lastname,salary,department,role,gender) values (?,?,?,?,?,?,?,?,?)";

		return template.update(sql,
				new Object[] { emp.getFirstname() + "" + emp.getLastname(), "password", "employee", emp.getFirstname(),
						emp.getLastname(), emp.getSalary(), emp.getDepartment(), emp.getRole(), emp.getGender() });
	}

	public EmpManagementUser validateUser(Login login) {

		String sql = "select * from empmanagementuser where username='" + login.getUsername() + "'and password='"
				+ login.getPassword() + "'";

		List<EmpManagementUser> users = template.query(sql, new UserMapper());

		return users.size() > 0 ? users.get(0) : null;
	}

	class UserMapper implements RowMapper<EmpManagementUser> {

		@Override
		public EmpManagementUser mapRow(ResultSet rs, int rowNum) throws SQLException {
			// TODO Auto-generated method stub
			EmpManagementUser user = new EmpManagementUser();

			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("password"));
			user.setAccountType(rs.getString("accountType"));

			return user;
		}

	}

	public List<EmpManagementUser> getEmployees() {
		return template.query("select * from empmanagementuser where accountType = 'employee'",
				new RowMapper<EmpManagementUser>() {
					public EmpManagementUser mapRow(ResultSet rs, int row) throws SQLException {
						EmpManagementUser e = new EmpManagementUser();
						e.setEid(rs.getInt(1));
						e.setUsername(rs.getString(2));
						e.setPassword(rs.getString(3));
						e.setAccountType(rs.getString(4));
						e.setFirstname(rs.getString(5));
						e.setLastname(rs.getString(6));
						e.setSalary(rs.getFloat(7));
						e.setDepartment(rs.getString(8));
						e.setRole(rs.getString(9));
						e.setPhone(rs.getInt(10));
						e.setEmail(rs.getString(11));
						e.setAddress(rs.getString(12));
						e.setGender(rs.getString(13));
						return e;
					}
				});
	}

	public List<EmpManagementUser> getEmployeeById(int id) {
		return template.query("select * from empmanagementuser where id = " + id + "",
				new RowMapper<EmpManagementUser>() {
					@Override
					public EmpManagementUser mapRow(ResultSet rs, int rowNum) throws SQLException {
						EmpManagementUser e = new EmpManagementUser();
						e.setEid(rs.getInt(1));
						e.setUsername(rs.getString(2));
						e.setPassword(rs.getString(3));
						e.setAccountType(rs.getString(4));
						e.setFirstname(rs.getString(5));
						e.setLastname(rs.getString(6));
						e.setSalary(rs.getFloat(7));
						e.setDepartment(rs.getString(8));
						e.setRole(rs.getString(9));
						e.setPhone(rs.getInt(10));
						e.setEmail(rs.getString(11));
						e.setAddress(rs.getString(12));
						e.setGender(rs.getString(13));
						return e;
					}
				});
	}

	public List<EmpManagementUser> getEmployeeByUsername(String username) {
		return template.query("select * from empmanagementuser where username = '" + username + "'",
				new RowMapper<EmpManagementUser>() {
					public EmpManagementUser mapRow(ResultSet rs, int rowNum) throws SQLException {
						EmpManagementUser e = new EmpManagementUser();
						e.setEid(rs.getInt(1));
						e.setUsername(rs.getString(2));
						e.setPassword(rs.getString(3));
						e.setAccountType(rs.getString(4));
						e.setFirstname(rs.getString(5));
						e.setLastname(rs.getString(6));
						e.setSalary(rs.getFloat(7));
						e.setDepartment(rs.getString(8));
						e.setRole(rs.getString(9));
						e.setPhone(rs.getInt(10));
						e.setEmail(rs.getString(11));
						e.setAddress(rs.getString(12));
						e.setGender(rs.getString(13));
						return e;
					}
				});

	}

	public int deleteemp(int id) {
		String sql = "delete from empmanagementuser where id =" + id + "";
		return template.update(sql);
	}

	public int updateemp(EmpManagementUser user) {
		String sql = "update empmanagementuser set firstname = '" + user.getFirstname() + "',lastname='"
				+ user.getLastname() + "', salary = " + user.getSalary() + ",department = '" + user.getDepartment()
				+ "',role = '" + user.getRole() + "',phone = " + user.getPhone() + ",email = '" + user.getEmail()
				+ "',address = '" + user.getAddress() + "' where id = " + user.getEid() + "";

		return template.update(sql);

	}

	public int changelogin(EmpManagementUser user) {
		String sql = "update empmanagementuser set username = '" + user.getUsername() + "', password = '"
				+ user.getPassword() + "' where id = " + user.getEid() + "";

		return template.update(sql);
	}

}
