package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.AddEmployee;
import com.springmvc.beans.Employee;

public class EmpDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(AddEmployee emp) {
		String sql = "insert into employee(firstname,lastname,salary,department,role,gender) values (?,?,?,?,?,?)";

		return template.update(sql, new Object[] { emp.getFirstname(), emp.getLastname(), emp.getSalary(),
				emp.getDepartment(), emp.getRole(), emp.getGender() });
	}

	public List<Employee> getEmployees() {
		return template.query("select * from employee", new RowMapper<Employee>() {
			public Employee mapRow(ResultSet rs, int row) throws SQLException {
				Employee e = new Employee();
				e.setEid(rs.getInt(1));
				e.setFirstname(rs.getString(2));
				e.setLastname(rs.getString(3));
				e.setSalary(rs.getFloat(4));
				e.setDepartment(rs.getString(5));
				e.setRole(rs.getString(6));
				e.setPhone(rs.getInt(7));
				e.setEmail(rs.getString(8));
				e.setAddress(rs.getString(9));
				e.setGender(rs.getString(10));
				return e;
			}
		});
	}

	public int delete(int id) {
		String sql = "delete from employee where id =" + id + "";
		return template.update(sql);
	}

}
