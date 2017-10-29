package com.ed;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class EmpDepSbApplication {
	
	@Autowired
	private JdbcTemplate template;
	
	@RequestMapping("/departments")
	public List<Map<String,Object>> departments(){
		return template.queryForList("select * from departments");
	}
	
	@RequestMapping("/employees")
	public List<Map<String,Object>> employees(){
		return template.queryForList("select * from employees");
	}
	
	
	public static void main(String[] args) {
		SpringApplication.run(EmpDepSbApplication.class, args);
	}
}
